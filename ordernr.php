<?php
require('api/config/MysqliDB.php');
include('api/config/config.php');
	$data = Array ("name" => $_POST['name'],
				   "address" => $_POST['address'],
				   "number" => $_POST['number'],
				   "pizzacode" => $_POST['pizzacode']
	);
	$id = $db->insert ('orders', $data);
?>