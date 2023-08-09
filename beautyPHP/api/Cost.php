<?php


include '../api/config.php';


$sql = "SELECT Sum(Cart.Total_Cost) as TotalCost from Cart ";



$res = mysqli_query($link, $sql);

$numrows = mysqli_num_rows($res);

$products = array();
if ($numrows > 0) {
    while ($row = mysqli_fetch_assoc($res)) {

        $products[] = $row;
    }
}

mysqli_close($link);

header('Content-Type: application/json');
echo json_encode($products);
