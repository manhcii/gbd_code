<?php

namespace App\Http\Controllers\FrontEnd;

use Illuminate\Http\Request;
use App\Consts;
use App\Http\Services\ContentService;
use App\Http\Services\PageBuilderService;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class DeployController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function deploy(Request $request)
    {
        $subdomain = $request->input('subdomain');
        // Cấu hình cho subdomain
        // Ví dụ: Tạo thư mục riêng cho subdomain
        $subdomainPath = '/var/www/' . $subdomain;
        if (!file_exists($subdomainPath)) {
            mkdir($subdomainPath, 0755, true);
        }

        // Có thể thêm logic để cập nhật cấu hình web server tại đây

        return redirect()->back()->with('success', 'Subdomain đã được tạo thành công.');
        
    }

    
    
}
