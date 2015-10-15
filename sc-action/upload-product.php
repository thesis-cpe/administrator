<!DOCTYPE html>
<?php 
    include_once '../include/sc-login.php';
    include_once '../include/function_lib.php';
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            $txtTitleProduct = $_POST['txtTitleProduct'];
            $editor1 = $_POST['editor1'];
           // echo $txtTitleProduct."<br>:";
           // echo $editor1."<br>:";
            $sqlInsertProduct = "INSERT INTO product (product_name, product_details) VALUES ('$txtTitleProduct', '$editor1')";
            $queryInsertProduct = $conn->query($sqlInsertProduct);
            $selProductID = "SELECT MAX(product_id) AS max_product_id FROM product";
            $queryProductID = $conn->query($selProductID);
            $resultProductID = $queryProductID->fetch_assoc();
            $varProductID = $resultProductID['max_product_id'];
            /*multiple file*/       
           for($i=0;$i<count($_FILES["fileProduct"]["name"]);$i++)
            {
                if($_FILES["fileProduct"]["name"][$i] != "")
                { 
                    $genName = generateRandomString(15);
                        if(move_uploaded_file($_FILES["fileProduct"]["tmp_name"][$i],"../drive/$genName".$_FILES["fileProduct"]["name"][$i]))
                        {
                                
                                echo "Copy/Upload Complete<br>";
                                /*ลงดีบี*/
                               echo $pathFile = $genName.$_FILES["fileProduct"]["name"][$i];
                                $sqlInsertFile = "INSERT INTO file ( path, product_id) VALUES ('$pathFile', '$varProductID')";
                                $queryInsertFile = $conn->query($sqlInsertFile);
                        }   
                }
            }  
            
            mysqli_close($conn);
            header( "location: ../product.php" );
            exit(0);
            ?>
    </body>
</html>
