<?php

namespace App\Http\Controllers\Home;

use App\Vcode;
use App\Admin;
use App\Components\Code;
use App\Components\Common;
use App\Http\Controllers\Controller;
use App\Rule;

class HomeController extends Controller
{
    /**
     * 获取短信验证码
     * @return $this|\Illuminate\Http\JsonResponse
     */
    public function getCode(){
        if(!$this->request->input('username')) {
            return $this->sendError(Code::MOBILE_EXIST);
        }
        $mobile = $this->request->input('username');

        $code = str_pad(mt_rand(10, 999999), 6, "0", STR_PAD_BOTH);

        //发送短信接口

        Vcode::getInstance()->saveData(['id'=>$mobile,'code'=>$code,'try_time' =>0]);
        return $this->sendJson();
    }

    /**
     * 手机+验证码注册
     * @return $this|\Illuminate\Http\JsonResponse
     */
    public function register(){
        $adminModel = new Admin();
        $username =  $this->request->input('username');
        $code =  $this->request->input('code');
        $password = $this->request->input('password')??'';
        $userInfo = $adminModel->getRows(['username' => $username])[0] ?? [];
        //用户存在
        if(!empty($userInfo)) {
            return $this->sendError(Code::ADMIN_EXIST);
        }
        //验证验证码
        $vcode = Vcode::getInstance()->getRows(['id' => $username])[0] ?? [];

        if(empty($vcode)) {
            return $this->sendError(Code::MOBILE_EXIST);
        }
        if(time() - $vcode['create_time'] < 1800 && $vcode['try_time'] > 5) {
            Vcode::destroy($userInfo['username']);
            return $this->sendError(Code::LOGIN_TRY_ERROR);
        }
        if($vcode['code'] !== $code){
            Vcode::getInstance()->saveData([
                'id' => $vcode['id'],
                'try_time' => $vcode['try_time'] + 1
            ]);
            return $this->sendError(Code::MOBILE_CODE);
        }
        Vcode::destroy($userInfo['username']);
        if(empty($password)){
            return $this->sendError(Code::PWD_ERROR);
        }
        Admin::getInstance()->saveData(['username'=>$username,'password'=>$password]);

        $userInfo = $adminModel->getRows(['username' => $username])[0] ?? [];
        $userInfo = $this->loginSuccess($userInfo);

        return $this->sendJson($userInfo);
    }

    /**
     * 登录方法
     * @return $this|\Illuminate\Http\JsonResponse
     */
    public function login()
    {
        $adminModel = new Admin();
        $username =  $this->request->input('username');
        $userInfo = $adminModel->getRows(['username' => $username])[0] ?? [];

        if(empty($userInfo)) {
            return $this->sendError(Code::LOGIN_ERROR);
        }

        if(time() - $userInfo['last_login'] < 3600 && $userInfo['try_time'] > 5) {
            return $this->sendError(Code::LOGIN_TRY_ERROR);
        }

        $checkPass = $adminModel->checkPassword($userInfo['id'], $this->request->input('password'));

        if(!$checkPass) {
            $adminModel->saveData([
                'id' => $userInfo['id'],
                'try_time' => $userInfo['try_time'] + 1
            ]);

            return $this->sendError(Code::LOGIN_ERROR);
        }

        $userInfo = $this->loginSuccess($userInfo);

        return $this->sendJson($userInfo);
    }

    private function loginSuccess($userInfo)
    {
        Admin::getInstance()->saveData([
            'id'         => $userInfo['id'],
            'try_time'   => 0,
            'last_login' => microtime(true),
            'last_ip'    => $this->request->getClientIp()
        ]);

        $rules = Rule::getInstance()->getRulesByUID($userInfo['id']);
        $this->request->session()->put('userLoginInfo', [
            'user_id' => $userInfo['id'],
            'username' => $userInfo['username'],
            'rules'    => $rules,
        ]);

        $menus = [];
        $list = Rule::getInstance()->getList(['menu' => 1, 'status' => 1]);
        foreach ($list as $row) {
            if(in_array($row['name'], $rules)) {
                $menus[] = $row;
            }
        }

        $userInfo['menus'] = Common::generateRuleTree($menus, 0);

        return $userInfo;
    }

    /**
     * 登出
     * @return $this|\Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        $this->request->session()->forget('userLoginInfo');
        return $this->sendJson();
    }

}
