<?php
/**
 * Created by PhpStorm.
 * User: heinz
 * Date: 2019-03-11
 * Time: 12:20
 */
require_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/assets/incl/init.php";

$id = (int)filter_input(INPUT_GET, "id", FILTER_SANITIZE_NUMBER_INT);

$obj = new product();
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
echo json_encode($obj->getApiItem($id));
