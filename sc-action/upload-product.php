<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            $txtTitleProduct = $_POST['txtTitleProduct'];
            $editor1 = $_POST['editor1'];
            echo $txtTitleProduct."<br>:";
            echo $editor1."<br>:";
             /*multiple file*/       
            for($i=0;$i<count($_FILES["fileProduct"]["name"]);$i++)
            {
                if($_FILES["fileProduct"]["name"][$i] != "")
                {
                        if(move_uploaded_file($_FILES["fileProduct"]["tmp_name"][$i],"../drive/".$_FILES["fileProduct"]["name"][$i]))
                        {
                                echo "Copy/Upload Complete<br>";
                        }
                }
            }

        ?>
    </body>
</html>
