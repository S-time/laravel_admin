<?php
/**
 * Created by PhpStorm.
 * User: zengfanwei
 * Date: 2018/11/7
 * Time: 14:25
 */

namespace App\Http\Controllers\Log;

use App\Http\Controllers\AuthController;
use App\SystemLogs;
use Illuminate\Http\Request;

class LogController extends AuthController
{

    /**
     * 获取日志列表分页
     */
    public function getLogs()
    {
        $data = SystemLogs::getInstance()->getList($this->request->all());
        return $this->sendJson($data);
    }
}