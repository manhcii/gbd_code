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
   

    public function deploy(Request $request)
    {
        $repo = $request->input('repo');
        $subdomain = $request->input('subdomain'); 
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
        
        $dbName = $subdomain;
        $dbUser = $subdomain; 
        $dbPassword = '080998';

        // Copy file .env.example thành .env
        $ssh->exec("cp $projectPath/.env.example $projectPath/.env");

        // Thiết lập kết nối database trong file .env
        $ssh->exec("sed -i 's/DB_DATABASE=.*/DB_DATABASE=$dbName/' $projectPath/.env");
        $ssh->exec("sed -i 's/DB_USERNAME=.*/DB_USERNAME=$dbUser/' $projectPath/.env");
        $ssh->exec("sed -i 's/DB_PASSWORD=.*/DB_PASSWORD=$dbPassword/' $projectPath/.env");

        return response()->json(['message' => $a, 'db' => $a]);
        
    }
}
