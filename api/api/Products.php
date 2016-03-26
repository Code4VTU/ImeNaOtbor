<?php
class Products
{
	public static function getProducts() {
		global $db;
		$products = $db->get('products');
		echo json_encode($products);
	
	}
}
?>