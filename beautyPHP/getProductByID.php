<?php


include '../beauty/config.php';


//gets user input
if (isset($_REQUEST["id"])) {
    $id = $_REQUEST["id"];
} else {
    $id = "";
}

$sql = "SELECT * FROM simplyBeauty.Product_Details WHERE Product_ID = $id ";
//$sql = "SELECT Product_Details.Product_ID, Product_Details.Description,Product_Details.Image, Hair_Length.Length, Hair_Length.Quantity,Hair_Length.Price FROM Product_Details INNER JOIN Hair_Length on Product_Details.Product_ID = Hair_Length.Product_ID WHERE Product_Details.Product_ID = $id";

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
