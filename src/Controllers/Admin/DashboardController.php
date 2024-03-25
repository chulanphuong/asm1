<?php

namespace Phuon\Asm1\Controllers\Admin;

use Phuon\Asm1\Commons\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        return $this->renderViewAdmin(__FUNCTION__);
    }
}
