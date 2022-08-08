<?php

header("Access-Control-Allow-Origin: *");

include '../beauty/config.php';

//gets the name and image for all categories 
$sql = "SELECT Category_ID,Name,Image FROM simplyBeauty.Product_Category";



$res = mysqli_query($link, $sql);

$numrows = mysqli_num_rows($res);

$categories = array();
if ($numrows > 0) {
    while ($row = mysqli_fetch_assoc($res)) {

        $categories[] = $row;
    }
}

mysqli_close($link);


echo json_encode($categories);
