<!DOCTYPE html>
<?php
session_start();
include_once '../include/sc-login.php';
?>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        /*VALIABLE*/
        @$user = $_POST['user'];
        @$pass = $_POST['pass'];
        $passMd5 = md5($pass);
        /*check login*/
        $sqlCheckUser = "SELECT * FROM user WHERE user='$user' AND pass='$passMd5'";
        $query = $conn->query($sqlCheckUser);
        
        $numrow = mysqli_num_rows($query);
        if($numrow >0) 
        {
            echo "success";
                while ($arrCheckUser = $query->fetch_array())
                {
                    $user1 = $arrCheckUser['user'];
                    $pass1 =  $arrCheckUser['pass'];
                    $id_user = $arrCheckUser['id_user'];
                    $name = $arrCheckUser['name'];
                    $surname =  $arrCheckUser['surname'];
                    $status = $arrCheckUser['status'];
                }
            $_SESSION["user"] = $user1;
            $_SESSION["user_id"] = $id_user;
            $_SESSION["name"] = $name;
            $_SESSION["surname"] = $surname;
            $_SESSION["status"] = $status;
            header( "location: ../news.php" );
            exit(0);
        }else
        {
            echo "username or password not found"."<br>"; ?>
        <a href="../index.php">back to login</a>
            
  <?php } ?>
        
        
        
    </body>
        
</html>
<?php mysqli_close($conn); ?>