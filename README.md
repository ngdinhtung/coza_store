# My First Project PHP-Laravel

## E-COMMERCE WEBSITE

* Description: Building website functions to sell products based on the database managed by 1 person use MVC Model

* Programming language used: HTML, CSS, Javascript, PHP (Laravel 8), MySQL
* Clone from: [Youtube](https://youtube.com/playlist?list=PLzrVYRai0riRnmKWhDEYixPDLs3CCk2lO&feature=shared)
* Template used: [AdminLTE](https://adminlte.io/),   [Cozastore-ThemeWagon](https://themewagon.com/themes/free-html5-ecommerce-website-template/)

***

*How to use:
1. Download Full Source upload on Github
    - Extract to coza_store-main folder
3. Install PHP environment
    - PHP 8.x
4. Use VS Code or PHPStorm IDE
    - Open folder coza_store-main
5. Run with Localhost by Laragon or Xampp
    - Create {database_name} and import coza_store.sql (from /coza_store-main/database folder)
7. Run with Composer Terminal
    - Rename .env.example to .env and change DB_DATABASE={database_name}
    - Open Terminal run:
      ~~~
      composer update --no-scripts
      ~~~
      ~~~
      composer dump-autoload
      ~~~
      ~~~
      php artisan key:generate
      ~~~
      ~~~
      php artisan serve
      ~~~
8. Run server on http://127.0.0.1:8000/
    - use /admin with account
      + username: admin@localhost.com
      + password: 123456
          
