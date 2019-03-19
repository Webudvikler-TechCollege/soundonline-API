<?php
/**
 * Created by PhpStorm.
 * User: heinz
 * Date: 2019-03-11
 * Time: 12:20
 */
require_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/assets/incl/init.php";

$obj = new productgroup();
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
echo json_encode($obj->getNested());
