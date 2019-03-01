<?php
/**
 * Created by PhpStorm.
 * User: zengfanwei
 * Date: 2018/10/31
 * Time: 14:25
 */

namespace App\Http\Middleware;

use App\Components\Code;
use App\Components\Common;
use App\Http\Controllers\Controller;
use App\SystemLogs;
use Closure;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $loginInfo = session('userLoginInfo');
        $base = new Controller($request);
        if(empty($loginInfo)) {
            return $base->sendError(Code::UN_LOGIN);
        }

        return $next($request);
    }


}