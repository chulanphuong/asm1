<?php
session_start();
use Bramus\Router\Router;
use Phuon\Asm1\Controllers\Admin\AuthenticateController;
use Phuon\Asm1\Controllers\Admin\CategoryController;
use Phuon\Asm1\Controllers\Admin\DashboardController;
use Phuon\Asm1\Controllers\Admin\UserController;
use Phuon\Asm1\Controllers\Admin\PostController;
use Phuon\Asm1\Controllers\Client\HomeController;
use Phuon\Asm1\Controllers\Client\PostController as ClientPostController;

require_once './vendor/autoload.php';
require_once './env.php';
require_once './helper.php';

$router = new Router();

// Define routes
$router->get('/', HomeController::class . '@index');
$router->get('/post/{id}', ClientPostController::class . '@show');

$router->match('GET|POST', '/auth/login', AuthenticateController::class . '@login');

$router->mount('/admin', function () use ($router) {

    $router->get('/',            DashboardController::class . '@index');
    $router->get('/logout',          AuthenticateController::class . '@logout');

    $router->mount('/users', function () use ($router) {
        $router->get('/',                           UserController::class . '@index');
        $router->get('/{id}/show',                  UserController::class . '@show');
        $router->get('/{id}/delete',                UserController::class . '@delete');
        $router->match('GET|POST', '/{id}/update',  UserController::class . '@update');
        $router->match('GET|POST', '/create',       UserController::class . '@create');
    });

    $router->mount('/categories', function () use ($router) {
        $router->get('/',                           CategoryController::class . '@index');
        $router->get('/{id}/show',                  CategoryController::class . '@show');
        $router->get('/{id}/delete',                CategoryController::class . '@delete');
        $router->match('GET|POST', '/{id}/update',  CategoryController::class . '@update');
        $router->match('GET|POST', '/create',       CategoryController::class . '@create');
    });

    $router->mount('/posts', function () use ($router) {
        $router->get('/',                           PostController::class . '@index');
        $router->get('/{id}/show',                  PostController::class . '@show');
        $router->get('/{id}/delete',                PostController::class . '@delete');
        $router->match('GET|POST', '/{id}/update',  PostController::class . '@update');
        $router->match('GET|POST', '/create',       PostController::class . '@create');
    });
});

$router->before('GET|POST', '/admin/*', function () {
    if (!isset($_SESSION['user'])) {
        header('location: /auth/login');
        exit();
    }
});

$router->before('GET|POST', '/admin/.*', function () {
    if (!isset($_SESSION['user'])) {
        header('location: /auth/login');
        exit();
    }
});

// Run it!
$router->run();
