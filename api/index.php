<?php
require 'flight/Flight.php';
require 'config/MysqliDB.php';


Flight::route('/', function(){
    echo 'hello world!';
});

Flight::start();
?>
