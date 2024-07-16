<?php

namespace App\Http\Controllers\FrontEnd;

use App\Consts;
use App\Http\Services\ContentService;
use App\Models\Branch;
use App\Models\Contact;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use phpseclib3\Net\SSH2;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $params['status'] = Consts::TAXONOMY_STATUS['active'];

        return $this->responseView('frontend.pages.contact.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'is_type' => 'required|max:255',
            'email' => 'required|email|max:255|unique:tb_contacts',
            'domain' => 'required|max:255|unique:tb_contacts',
            'phone' => ['required', 'max:255', 'unique:tb_contacts', 'regex:#^(\+84|0)[3|5|7|8|9][0-9]{8}$#'],
        ], [
            'email.required' => 'Email là bắt buộc.',
            'email.email' => 'Email phải là một địa chỉ email hợp lệ.',
            'email.unique' => 'Email đã tồn tại.',
            'phone.required' => 'Số điện thoại là bắt buộc.',
            'phone.unique' => 'Số điện thoại đã tồn tại.',
            'domain.required' => 'Tên miền là bắt buộc.',
            'domain.unique' => 'Tên miền đã tồn tại.',
            'phone.regex' => 'Số điện thoại không hợp lệ',
        ]);
        
        
        try {
            //Đoạn thêm vào thư mục 
            $repo = $request->git_repo;
            $subdomain = $request->domain; 
            $projectPath = '/www/wwwroot/efb.vn/public/subdomain/'. $subdomain;
            // $projectPath = '/www/wwwroot/'. $subdomain;
            $domain = "$subdomain.efb.vn";

            $ssh = new SSH2(env('SSH_HOST'));
            if (!$ssh->login(env('SSH_USER'), env('SSH_PASSWORD'))) {
                exit('Login Failed');
            }
            // Tạo thư mục project nếu chưa tồn tại
            $ssh->exec("mkdir -p $projectPath");
            // Kiểm tra nếu thư mục đã là một repository Git
            $result = $ssh->exec("cd $projectPath && git rev-parse --is-inside-work-tree");
            
            if (trim($result) !== 'true') {
                // Nếu không phải, clone repository
                $ssh->exec("rm -rf $projectPath"); // Xóa thư mục hiện tại nếu cần thiết
                $a=$ssh->exec("git clone $repo $projectPath");
                $b = $ssh->exec("cd $projectPath && composer update");
            } else {
                // Nếu đã là repository, pull thay đổi mới nhất
                $a=$ssh->exec("cd $projectPath && git pull");
                $b = $ssh->exec("cd $projectPath && composer update");
            }
            // $b=$ssh->exec("bt domain add --domain=$subdomain.efb.vn --path=$projectPath");
            // $b=$this->addSubdomain($ssh, $domain, $projectPath);
            
            $dbName = $subdomain;
            $dbUser = $subdomain; 
            $dbPassword = '080998';

            // Copy file .env.example thành .env
            $ssh->exec("cp $projectPath/.env.example $projectPath/.env");

            // Thiết lập kết nối database trong file .env
            $ssh->exec("sed -i 's/DB_DATABASE=.*/DB_DATABASE=$dbName/' $projectPath/.env");
            $ssh->exec("sed -i 's/DB_USERNAME=.*/DB_USERNAME=$dbUser/' $projectPath/.env");
            $ssh->exec("sed -i 's/DB_PASSWORD=.*/DB_PASSWORD=$dbPassword/' $projectPath/.env");

            //thực hiện khác
            $params = $request->all();
            $link=$domain;
            $params['status'] = Consts::CONTACT_STATUS['new'];
            $messageResult = '';
            // Case get message
            switch ($params['is_type']) {
                case Consts::CONTACT_TYPE['newsletter']:
                    $messageResult = $this->web_information->information->notice_newsletter ?? __('Subscribe newsletter successfully!');
                    break;
                case Consts::CONTACT_TYPE['advise']:
                    $messageResult = $this->web_information->information->notice_advise ?? __('Booking successfull!');
                    break;
                case Consts::CONTACT_TYPE['faq']:
                    $messageResult = $this->web_information->information->notice_faq ?? __('Send contact successfully!');
                    break;
                case Consts::CONTACT_TYPE['call_request']:
                    $messageResult = $this->web_information->information->call_request ?? __('Gửi thành công ,Chúng tôi đã gửi thông tin đăng nhập đến email của bạn!');
                    break;
                default:
                    $messageResult = $this->web_information->information->notice_contact ?? __('Send contact successfully!');
                    break;
            }
            if ($params['is_type'] == Consts::CONTACT_TYPE['newsletter']) {
                $contact = Contact::firstOrCreate(
                    [
                        'is_type' => $params['is_type'],
                        'email' => $params['email']
                    ]
                );

                return $this->sendResponse($contact, $messageResult);
            } else {
                $contact = Contact::create($params);
                if ($params['is_type'] == Consts::CONTACT_TYPE['call_request'] ) {
                    if (isset($this->web_information->information->email)) {
                        $email = $this->web_information->information->email;
                        Mail::send('frontend.emails.contact', ['contact' => $contact], function ($message) use ($email) {
                            $message->to($email);
                            $message->subject(__('Bạn nhận 1 yêu cầu mới dùng thử templace trên hệ thống'));
                        }); 
                    }
                    if (isset($request->email)) {
                        $email = $request->email;
                        $data_send = [
                            'link' => $link,
                            'user' => 'test01@gmail.com',
                            'pass' => '12345678',
                        ];
                        Mail::send('frontend.emails.customer',$data_send, function ($message) use ($email) {
                            $message->to($email);
                            $message->subject(__('Thông tin đăng nhập'));
                        }); 
                    }
                }

                return $this->sendResponse($link, $messageResult);
            }
        } catch (Exception $ex) {
            // throw $ex;
            abort(422, __($ex->getMessage()));
        }
    }

    public function branch(Request $request)
    {
        $params['city'] = $request->get('city');
        $params['district'] = $request->get('district');

        $rows = Branch::where('status', Consts::STATUS['active'])
            ->when(!empty($params['city']), function ($query) use ($params) {
                $query->where('city', '=', $params['city']);
            })
            ->when(!empty($params['district']), function ($query) use ($params) {
                $query->where('district', '=', $params['district']);
            })
            ->get();

        $this->responseData['params'] = $params;
        $this->responseData['rows'] = $rows;

        return $this->responseView('frontend.pages.branch.index');
    }
}
