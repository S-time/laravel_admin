"# laravel_admin" 
## Laravel-Admin 简介

Laravel-Admin 是用 laravel + elementUi前端框架前后端分离写成的后台脚手架，自带用户组权限系统。

## 安装

- composer install  
- 配置nginx 本地域名local.admin.com(如需更换域名，需要在webpack.mix.js更换配置域名) 指向/public目录 
- npm install
- 导入/laravel-admin.sql 数据库
- 将.env.example 重命名为.env后修改数据库配置文件
- npm run dev


## 使用

默认两个后台管理测试账号 god/123456 , test/123456

npm run watch 可在开发时运行，实时兼控前端文件修改
npm run prod 生产环境打包

## 注意

设置新的权限后需要重新登录才会生效。

本项目未经严格测试，可能存在bug，仅供参考学习。



## License
