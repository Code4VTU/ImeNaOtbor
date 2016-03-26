<?php
header('Content-Type: text/html; charset=utf-8');
require('api/config/MysqliDB.php');
include('api/config/config.php');
$db->where("productname", $_POST['name']);
$results = $db->get("products");
echo $results[0]['displayname'];
?>