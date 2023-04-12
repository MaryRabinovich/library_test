<?php

namespace App\Controllers;

use Symfony\Component\HttpFoundation\Request;

class DefaultController
{
    public function default(Request $request)
    {
        echo 'I am your default method from your default controller:)';
    }
}
