<?php


include '../beauty/config.php';
//gets user input
$article = array();
$message = "no product matched your search";
$query = strtolower($_REQUEST["query"]);
// if ((empty($query))) {
//     $article = $message;
// }
if (isset($_REQUEST["query"])) {
    //  if(!empty($query))
    //$query = strtolower($_REQUEST["query"]);
    $sql = "SELECT * FROM simplyBeauty.Product_Details WHERE Description LIKE '%" . $query . "%'";

    $res = mysqli_query($link, $sql);
    $numrows = mysqli_num_rows($res);
    if ($numrows > 0) {
        // $article = array();
        while ($obj = mysqli_fetch_object($res)) {
            $article[] = $obj;
        }
    }
    // $message = "no product matched your search";
    // $article = $message;
    // $article = [];
} else {

    $article = [];
}






mysqli_close($link);

header('Content-Type: application/json');

echo json_encode($article);
