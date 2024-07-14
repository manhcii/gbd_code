<?php

namespace App\Http\Controllers\FrontEnd;

use Illuminate\Http\Request;
use phpseclib3\Net\SSH2;
use GuzzleHttp\Client;

class DeployController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function deploy(Request $request)
    // {
    //     $subdomain = $request->input('subdomain');
    //     $domain = 'efb.vn'; // Thay thế bằng domain chính của bạn
    //     $serverIP = '163.44.206.74:21738'; // Thay thế bằng IP của server aaPanel

    //     $client = new Client([
    //         'verify' => false, // Bỏ qua xác minh chứng chỉ SSL
    //     ]);

    //     try {
    //         $response = $client->post("https://163.44.206.74:21738/v2/site?action=AddSite", [
    //             'form_params' => [
    //                 'subdomain' => $subdomain,
    //                 'domain' => $domain,
    //             ]
    //         ]);

    //         $statusCode = $response->getStatusCode();
    //         $body = $response->getBody()->getContents();

    //         return response()->json([
    //             'status_code' => $statusCode,
    //             'message' => 'Subdomain created successfully!',
    //             'response' => $body,
    //         ]);
    //     } catch (\Exception $e) {
    //         return response()->json([
    //             'status_code' => $e->getCode(),
    //             'message' => 'Failed to create subdomain.',
    //             'error' => $e->getMessage(),
    //         ], 500);
    //     }
        
    // }
    public function deploy(Request $request)
    {
        $repo = $request->input('repo');
        $subdomain = $request->input('subdomain'); // Nhận subdomain từ form
        $projectPath = '/www/wwwroot/'. $subdomain;
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
        } else {
            // Nếu đã là repository, pull thay đổi mới nhất
            $a=$ssh->exec("cd $projectPath && git pull");
        }
        // $b=$ssh->exec("bt domain add --domain=$subdomain.efb.vn --path=$projectPath");
        // $b=$this->addSubdomain($ssh, $domain, $projectPath);
        return response()->json(['message' => $a]);
        
    }
    // private function addSubdomain($ssh, $domain, $path)
    // {
    //     $apacheConfig = "
    //         <VirtualHost *:80>
    //             ServerAdmin webmaster@localhost
    //             ServerName $domain
    //             DocumentRoot $path

    //             <Directory $path>
    //                 Options Indexes FollowSymLinks
    //                 AllowOverride All
    //                 Require all granted
    //             </Directory>

    //             ErrorLog \${APACHE_LOG_DIR}/error.log
    //             CustomLog \${APACHE_LOG_DIR}/access.log combined
    //         </VirtualHost>";

    //     // Tạo file cấu hình Apache cho subdomain
    //     $ssh->exec("echo '$apacheConfig' > /etc/apache2/sites-available/$domain.conf");
    //     $ssh->exec("a2ensite $domain.conf");
    //     dd( $ssh->exec("echo '$apacheConfig' > /etc/apache2/sites-available/$domain.conf"));
    //     // Reload Apache để áp dụng thay đổi
    //     $ssh->exec("systemctl reload apache2");
    // }
}
