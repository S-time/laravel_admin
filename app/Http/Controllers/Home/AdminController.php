<?php
/**
 * Created by PhpStorm.
 * User: zengfanwei
 * Date: 2018/11/7
 * Time: 14:25
 */

namespace App\Http\Controllers\Home;


use App\Components\Code;
use App\Components\Common;
use App\Http\Controllers\Controller;
use App\Admin;
use App\Vcode;
use Illuminate\Http\Request;

class AdminController extends Controller
{

    protected $loginInfo;
    public function __construct(Request $request)
    {
        parent::__construct($request);

        //检查登录
        $this->middleware('user');
    }

    public function setLoginInfo()
    {
        $this->loginInfo = session('userLoginInfo');
    }
    /**
     * 保存用户
     */
    public function save()
    {
        if(!$this->request->input('id')) {
            $rows = Admin::getInstance()->getRows(['username' => $this->request->input('username')]);
            if(!empty($rows)) {
                return $this->sendError(Code::ADMIN_EXIST);
            }
        }

        Admin::getInstance()->saveData($this->request->all());

        return $this->sendJson();
    }

    /**
     * 绑定邮箱
     * @return $this|\Illuminate\Http\JsonResponse
     */
    public function bindEmail(){
        $this->setLoginInfo();

        $adminModel = new Admin();
        $code =  $this->request->input('code');
        $email = $this->request->input('email');
        $username =  $this->loginInfo['username'];
        $userInfo = $adminModel->getRows(['username' => $username])[0] ?? [];
        if(empty($userInfo)) {
            return $this->sendError(Code::USER_ERROR);
        }
        //验证验证码
        $vcode = Vcode::getInstance()->getRows(['id' => $userInfo['username']])[0] ?? [];

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

        Admin::getInstance()->saveData(['id'=>$userInfo['id'],'email'=>$email]);

        return $this->sendJson();
    }

    /**
     * 解除绑定邮箱
     * @return $this|\Illuminate\Http\JsonResponse
     */
    public function unbindEmail(){
        $this->setLoginInfo();

        $adminModel = new Admin();
        $code =  $this->request->input('code');
        $username =  $this->loginInfo['username'];
        $userInfo = $adminModel->getRows(['username' => $username])[0] ?? [];
        if(empty($userInfo)) {
            return $this->sendError(Code::USER_ERROR);
        }
        //验证验证码
        $vcode = Vcode::getInstance()->getRows(['id' => $userInfo['username']])[0] ?? [];

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

        Admin::getInstance()->saveData(['id'=>$userInfo['id'],'email'=>'']);

        return $this->sendJson();
    }

    public function uploadAvatar()
    {
        $res = Common::uploadImgToLocalStorage($this->request, 'file');
        if($res['error'] !== 0) {
            return $this->sendError(Code::FAIL, $res['msg']);
        }

        return $this->sendJson(['img_path' => $res['img_path']]);
    }

    public function saveAvatar()
    {
        $this->setLoginInfo();
        Admin::getInstance()->saveData([
            'id' => $this->loginInfo['user_id'],
            'avatar' => $this->request->input('avatar')
        ]);

        return $this->sendJson();
    }

    public function changePassword()
    {
        $this->setLoginInfo();
        if(!Admin::getInstance()->checkPassword($this->loginInfo['user_id'], $this->request->input('old_password'))) {
            return $this->sendError(Code::OLD_PASSWORD_WRONG);
        }

        Admin::getInstance()->saveData([
            'id' => $this->loginInfo['user_id'],
            'password' => $this->request->input('password')
        ]);

        return $this->sendJson();
    }

    public function getProfile()
    {
        $this->setLoginInfo();
        $rows = Admin::getInstance()->getRows([
            'id' => $this->loginInfo['user_id'],
        ]);

        return $this->sendJson($rows[0] ?? []);
    }
}