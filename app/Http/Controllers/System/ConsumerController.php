<?php
/**
 * Created by PhpStorm.
 * User: chenchuan
 * Date: 2019/2/27
 * Time: 21:26
 */
namespace App\Http\Controllers\System;

use App\Http\Controllers\AuthController;
use App\Components\Code;
use App\Consumer;
use Illuminate\Http\Request;
class ConsumerController extends AuthController{

    /**
     * 获取客户列表分页
     */
    public function getList()
    {
        $data = Consumer::getInstance()->getList($this->request->all());

        $data['auth'] = [
            'canTel' => $this->canTel()
        ];

        return $this->sendJson($data);
    }
    //拨号
    public function tel(){


        $rows = Consumer::getInstance()->getRows(['id' => $this->request->input('id')]);
        //拨号处理
        return $this->sendJson($rows);
    }
}