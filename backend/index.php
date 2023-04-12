<?php 

require_once __DIR__.'/vendor/autoload.php';

use Symfony\Component\HttpFoundation\Request;

$request = Request::createFromGlobals();

$target = $request->get('target', 'default');
if (!in_array($target, ['users', 'books', 'authors', 'genres'])) {
    $target = 'default';
}
$controllerName = 'App\\Controllers\\' . ucfirst($target) . 'Controller';

$action = $request->get('action', 'default');
if (!in_array($action, ['all', 'get', 'store', 'update', 'delete'])) {
    $action = 'default';
}

$controller = new $controllerName();
$controller->$action($request);
