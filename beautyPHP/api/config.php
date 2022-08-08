<?php

// header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");


//MySql server and database info
$db = "simplyBeauty";
$host = "localhost";
$db_user = 'admin';
$db_password = 'test1234';

//connecting to database
$link = mysqli_connect($host, $db_user, $db_password, $db);
