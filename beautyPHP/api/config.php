<?php

// header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Credentials: true ");
header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");


//MySql server and database info
// $db = "simplyBeauty";
// $host = "localhost";
// $db_user = 'admin';
// $db_password = 'test1234';

$db = "sql9638144";
$host = "sql9.freesqldatabase.com";
$db_user = 'sql9638144';
$db_password = 'ANk7p8hpDk';


//connecting to database
$link = mysqli_connect($host, $db_user, $db_password, $db);
