<?php

// header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Credentials: true ");
header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");


//MySql server and database info
$db = "id21128178_simplybeauty";
$host = "localhost";
$db_user = 'id21128178_admin';
$db_password = 'Test1234*';


//connecting to database
$link = mysqli_connect($host, $db_user, $db_password, $db);
