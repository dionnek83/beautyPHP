<?php


include '../api/config.php';



$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);

$Product_ID = "";
$Quantity = "";
$Total_Cost = "";
$Hair_Length_ID = "";
$Price_Per_Product = "";

$Product_ID =  mysqli_real_escape_string($link, $_POST["Product_ID"]);
$Quantity = mysqli_real_escape_string($link, $_POST["Quantity"]);
$Total_Cost = mysqli_real_escape_string($link, $_POST["Total_Cost"]);
$Hair_Length_ID = mysqli_real_escape_string($link, $_POST["Hair_Length_ID"]);
$Price_Per_Product = mysqli_real_escape_string($link, $_POST["Price_Per_Product"]);

$Product_ID = intval($Product_ID);
$Quantity = intval($Quantity);
$Total_Cost = intval($Total_Cost);
$Hair_Length_ID = intval($Hair_Length_ID);
$Price_Per_Product = intval($Price_Per_Product);


$errors = array();
//$data = "success";



if (empty($Product_ID)) {
    array_push($errors, "Product_ID is required");
}
if (empty($Quantity)) {
    array_push($errors, "Quantity is required");
}
if (empty($Total_Cost)) {
    array_push($errors, "Total_Cost is required");
}
if (empty($Hair_Length_ID)) {
    array_push($errors, "Hair length ID is required");
}
if (empty($Price_Per_Product)) {
    array_push($errors, "Price per product is required");
}



// $user_check_query = "SELECT * FROM Users WHERE Quantity = '$Quantity' LIMIT 1";

// $result = mysqli_query($link, $user_check_query);
// $user = mysqli_fetch_assoc($result);

// if ($user) {
//     if ($user['Quantity'] === $Quantity) {
//         array_push($errors, "Quantity already exists");
//         // $return["success"] = false;
//         // $return["message"] = "Quantity already exists";
//     }
// }
// if (count($errors) == 0) {


$query = "INSERT INTO Cart(Product_ID ,Quantity,Price_Per_Product, Total_Cost,Hair_Length_ID)
  VALUES ($Product_ID,$Quantity,$Price_Per_Product,$Total_Cost,$Hair_Length_ID)";


mysqli_query($link, $query) or die(mysqli_error($link));
array_push($errors, "success");
// }





mysqli_close($link);
header('Content-Type: application/json');
echo json_encode($errors);
