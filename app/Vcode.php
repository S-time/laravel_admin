<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Vcode extends Model
{
    protected $table = 'yy_code';

    public $timestamps = false;


    public static $instance;

    public static function getInstance()
    {
        if(!self::$instance) {
            self::$instance = new self();
        }
        
        return self::$instance;
    }

    public function getRows($conditons)
    {
        return $this->where($conditons)->orderBy('id', 'asc')->get()->toArray();
    }

    public function saveData($params)
    {
        if(!empty($params['id'])) {
            $model = $this->find($params['id']);
        } else {
            $model = new self();
        }
        $model->create_time = microtime(true);

        foreach ($params as $key => $value) {
            $model->{$key} = $value;
        }

        $model->save();
    }







}