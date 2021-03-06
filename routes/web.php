<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

route::namespace('Auth')->group(function () {
    Route::get('login/ddlogin', 'GroupController@getList');
});



//api
Route::prefix('/api/')->group(function () {
    //
    route::prefix('home/')->namespace('Home')->group(function () {
        //登录注册
        Route::get('user/getCode', 'HomeController@getCode');
        Route::get('user/register', 'HomeController@register');
        Route::get('user/logout', 'HomeController@logout');

        //修改信息
        Route::get('user/bindEmail', 'AdminController@bindEmail');
        Route::post('user/unbindEmail', 'AdminController@unbindEmail');
        Route::post('user/avatar/upload', 'AdminController@uploadAvatar');
        Route::post('user/avatar/save', 'AdminController@saveAvatar');
        Route::get('user/profile/get', 'AdminController@getProfile');
        Route::post('user/password/change', 'AdminController@changePassword');
    });



    Route::get('test', 'IndexController@test');

    route::namespace('Auth')->group(function () {
        Route::post('login', 'loginController@login');
        Route::post('logout', 'loginController@logout');
    });

    route::namespace('System')->group(function () {
        Route::post('get/path/info', 'RuleController@getPathInfo');
    });

    /**
     * 系统设置
     */
    route::prefix('system/')->namespace('System')->group(function () {
        //管理组管理
        Route::get('group/list', 'GroupController@getList');
        Route::post('group/save', 'GroupController@save');

        //权限管理
        Route::get('rule/list', 'RuleController@getTreeList');
        Route::get('rule/routes', 'RuleController@getAllRoutes');
        Route::post('rule/save', 'RuleController@save');
        Route::get('rule/get', 'RuleController@get');
        Route::post('rule/delete', 'RuleController@delete');

        //用户管理
        Route::get('admin/list', 'AdminController@getList');
        Route::get('admin/loglist', 'AdminController@getLogs');
        Route::post('admin/save', 'AdminController@save');
        Route::post('admin/avatar/upload', 'AdminController@uploadAvatar');
        Route::post('admin/avatar/save', 'AdminController@saveAvatar');
        Route::get('admin/profile/get', 'AdminController@getProfile');
        Route::post('admin/password/change', 'AdminController@changePassword');

        Route::get('consumer/list', 'ConsumerController@getList');
        Route::post('consumer/tel', 'ConsumerController@tel');
    });

});


