<?php


include '../api/config.php';


//gets user input
if (isset($_REQUEST["id"])) {
    $id = $_REQUEST["id"];
} else {
    $id = "";
}

$sql = "SELECT * FROM id21128178_simplybeauty.Product_Details WHERE Product_ID = $id ";

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
