<?php
@session_start();
 if($_SESSION["user"])
 { 
      header( "location: news.php" );
      exit(0);
 }
 else {
     header( "location: login.php" );
     exit(0);
}
 ?>