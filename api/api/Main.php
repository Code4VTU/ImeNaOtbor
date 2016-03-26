<?php
class Main
{
    public static function order($pizzacode,$user)
    {
	global $db;
	$db->where("username", $user);
	$db->get("users");
	
	}
	public static function ordernoreg($pizzacode,$name,$address,$number) {
	global $db;
	if(validData($name,$address,$number)){
	$data = Array ("name" => "$name",
				   "address" => "$address",
				   "number" => $number,
				   "pizzacode" => $pizzacode
	);
	$id = $db->insert ('orders', $data);
	} else echo "Data isn't valid.";
	}
	public static function login($username, $password) {
	global $db;
	$db->where("username", $username);
	$db->where("password", hash('sha512', $password));
	$db->get("users");
	if($db->count>0) echo 1; else echo 0;
	}
}
	?>