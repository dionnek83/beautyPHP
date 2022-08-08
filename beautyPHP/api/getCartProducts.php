<?php


include '../beauty/config.php';


$sql = "SELECT Product_Details.Product_ID, Product_Details.Description, Product_Details.Image , Hair_Length.Length ,  Hair_Length.Quantity as TotalQ, Cart.Total_Cost, Cart.Quantity, Cart.Cart_ID ,Cart.Price_Per_Product FROM Product_Details INNER JOIN Cart ON Cart.Product_ID = Product_Details.Product_ID INNER JOIN Hair_Length ON Hair_Length.Hair_Length_ID = Cart.Hair_Length_ID";



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
