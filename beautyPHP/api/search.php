<?php


include '../api/config.php';

//gets user input
$article = array();
$message = "no product matched your search";
$query = strtolower($_REQUEST["query"]);

if (isset($_REQUEST["query"])) {
   
    $sql = "SELECT * FROM id21128178_simplybeauty.Product_Details WHERE Description LIKE '%" . $query . "%'";

    $res = mysqli_query($link, $sql);
    $numrows = mysqli_num_rows($res);
    if ($numrows > 0) {
        
        while ($obj = mysqli_fetch_object($res)) {
            $article[] = $obj;
        }
    }
  
} else {

    $article = [];
}






mysqli_close($link);

header('Content-Type: application/json');

echo json_encode($article);
