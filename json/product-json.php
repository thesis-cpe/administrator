<?php
    include_once '../include/sc-login.php';
    //$productID = $_GET['id'];
    //$selProduct = "SELECT * FROM product WHERE product_id = '$productID'";
    $selProduct = "SELECT * FROM product";
    $querySelProduct = $conn->query($selProduct);
    while($arrSelProduct = $querySelProduct->fetch_array()){
        //$dataSelProduct = $arrSelProduct['product_name'];
        //echo $dataSelProduct."<br>";
        $dataSelProduct[] = $arrSelProduct;
    }
  echo  json_encode($dataSelProduct);
?>
