<!DOCTYPE html>
<?php
@session_start();
 if($_SESSION["user"])
 {  /*inlude db connect*/
     include_once './include/sc-login.php'; //เชื่อมต่อฐานข้อมูล
     include_once './include/function_lib.php'; //เรียก LIB 
     /*รับค่ามาจากหน้า news.php*/
     $newsIDFromNews = $_GET['id'];
      /*เลือกค่าออกมา จาก DB*/
        $sqlSelNewsEdit = "SELECT * FROM product JOIN file ON product.product_id = file.product_id WHERE product.product_id = '$newsIDFromNews'";
        $querySelNewsEdit = $conn->query($sqlSelNewsEdit);
        $resultSelNewsEdit = $querySelNewsEdit->fetch_assoc();
        
        
     /*ถ้ามีการ POST ค่ามา*/
     if(isset($_POST['btnSubmit'])){
                $newsId = NULL; $productID = NULL;   
                $txtTitleActivity = $_POST['txtTitleActivity'];
                $editor1 = $_POST['editor1'];
                $hdfId = $_POST['hdfId']; //โยนค่าไอดี
                $oldPath = $_POST['hdfOldPath'];
               if($txtTitleActivity !=  $resultSelNewsEdit['product_name'])
               {
                 $sqlUpdateName = "UPDATE `product` SET `product_name` = '$txtTitleActivity' WHERE `product_id` = '$hdfId'";
                 $queryUpdateName = $conn->query($sqlUpdateName);
               }
               if($resultSelNewsEdit['product_details'] != $editor1)
               {
                   $sqlUpdateDetails = "UPDATE `product` SET `product_details` = '$editor1' WHERE `product_id` = '$hdfId'";
                   $queryUpdateName = $conn->query($sqlUpdateDetails);
               }
             
                /*Random ชื่อ*/
                $randFileName = generateRandomString(15);
               
                /*upload file*/
                    for($i=0;$i<count($_FILES["fileProduct"]["name"]);$i++)
                    {  
                        if($_FILES["fileProduct"]["name"][$i] != "")
                        { 
                            $genName = generateRandomString(15);
                                if(move_uploaded_file($_FILES["fileProduct"]["tmp_name"][$i],"drive/$genName".$_FILES["fileProduct"]["name"][$i]))
                                {

                                        
                                        /*ลงดีบี*/
                                       $pathFile[$i] = $genName.$_FILES["fileProduct"]["name"][$i];
                                       
                                       $sqlUpfile = "UPDATE file SET path = '$pathFile[$i]' WHERE product_id = '$hdfId'";
                                       $queryUpfile = $conn->query($sqlUpfile);
                                      
                                       //นึการลบไฟล์ไม่ออก
                                }   
                        }
                   }  
                    
            /*  if(move_uploaded_file($_FILES["fileBanner"]["tmp_name"],"drive/$randFileName".$_FILES["fileBanner"]["name"]))
                 {
                    $fileNameUp = $randFileName.$_FILES["fileBanner"]["name"];
                    $sqlUpfile = "UPDATE file SET path = '$fileNameUp' WHERE product_id = '$hdfId'";
                    $queryUpfile = $conn->query($sqlUpfile);
                    
                    unlink($oldPath);
                 } */
           /*กลับหน้าเดิม*/
           header( "location: edit-product.php?id=$hdfId" );
           exit(0);
                
    }
     
?>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ระบบจัดการแอปพลิเคชันอุทยานหลวงราชพฤกษ์</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  
  <!-- .bootstrap gall -->
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>R</b>AJ</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Control Panel</b></span>
    </a>

    <!-- Header Navbar -->
        <?php include_once "./include/navbar.html"; ?>
    <!-- .Header Navbar -->
      
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
        <?php include_once "./include/sidebar.html";?>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
          เพิ่มกิจกรรม 
          <small><a href="product.php">กลับไปยังหน้าของที่ระลึก</a></small>
      </h1>
      <ol class="breadcrumb">
       <!-- <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>  -->
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <div class="row">
          <div class="col-xs-12">
               <div class="box box-default">
                <div class="box-header with-border">
                  <h3 class="box-title">เพิ่มรายละเอียดกิจกรรม</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
                <div class="box-body">
                  
                  <!--content-->
                  <div class="container">
                      <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-xs-12"><label>ชื่อกิจกรรม:</label></div>
                        </div>
                        <div class="row">
                           <div class="col-xs-10">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                <input name="txtTitleActivity" type="text" class="form form-control" placeholder="กรอกชื่อกิจกรรม" value="<?php echo $resultSelNewsEdit['product_name'];?>" required />
                            </div>
                           </div>
                            <div class="col-xs-2"><button name="btnSubmit" class="btn btn-success" title="บันทีก" type="submit"><span class="fa fa-save"></span></button></div>
                        </div>
                          <br>
                          <div class="row">
                              <div class="col-xs-12"><label>เปลี่ยนรูปตัวอย่างสินค้า:</label><small>เปลี่ยนภาพตัวอย่างของที่ระลึกแบบยกชุด</small></div>
                          </div>
                       
                        <div class="row">
                            <div class="col-xs-9">
                                  <!--  <input type="file" name="fileBanner"/> -->
                                <ol id="olFile">
                                    <li><input name="fileProduct[]" type="file"></li>
                                </ol>
                            </div>
                            <div class="col-xs-2">
                                 <button class="btn btn-sm btn-primary" type="button" id="btnAddFile" title="แนบไฟล์เพิ่ม"><span class="fa fa-plus"></span></button>
                                 <button class="btn btn-sm btn-danger" type="button" id="btnRemove" title="ลบไฟล์ที่แนบ"><span class="fa fa-minus"></span></button>
                             </div>
                        </div>
                          <br>
                          
                         
                          <div class="row">
                            <div class="col-xs-10">
                              <!--ภาพ-->  
                               <div class="box box-default">
                                    <div class="box-header">
                                      <h3 class="box-title">ภาพ
                                        <small>ภาพของที่ระลึก</small>
                                      </h3>
                                      <!-- tools box -->
                                      <div class="pull-right box-tools">
                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                          <i class="fa fa-minus"></i></button>
                                      </div>
                                      <!-- /. tools -->
                                    </div>
                                   <div class="box-body pad">
                                    <!--ภาพ-->
                                             <div class="box-body">
                                                <!--ส่วนเนือ้หา-->
                                                 <div class="container">
                                                      <div class="row">
                                                         <div class="col-md-9">
                                                         <?php 
                                                           $qurySelpathImg = mysqli_query($conn, $sqlSelNewsEdit);
                                                           while($arrSelPathImg = mysqli_fetch_array($qurySelpathImg))
                                                            { $pathImg = $arrSelPathImg['path'];
                                                         ?>
                                                                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                                                                     <a class="thumbnail" href="drive/<?php echo $pathImg; ?>" target="_blank">
                                                                         <img class="img-responsive" src="drive/<?php echo $pathImg; ?>">
                                                                     </a>
                                                                 </div> 
                                                       <?php }?>
                                                        
                                                         </div>
                                                      </div>
                                                  </div> 
                                                <!--.ส่วนเนือ้หา-->
                                            </div>
                                    <!--.ภาพ-->
                                   </div>
                               </div>
                              <!--.ภาพ--> 
                            </div>
                        </div>
                          <br>
                        <div class="row">
                            <div class="col-xs-10">
                              
                                <!---CK EDITOR-->
                                <div class="box box-default">
                                    <div class="box-header">
                                      <h3 class="box-title">รายละเอียดกิจกรรม
                                        <small>แสดงส่วนล่างแบนเนอร์</small>
                                      </h3>
                                      <!-- tools box -->
                                      <div class="pull-right box-tools">
                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                          <i class="fa fa-minus"></i></button>
                                        
                                      </div>
                                      <!-- /. tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body pad">
                                     
                                            <textarea id="editor1" name="editor1" rows="10" cols="80">
                                                          <?php
                                                             echo $resultSelNewsEdit['product_details'];
                                                          ?>          
                                            </textarea>
                                      
                                    </div>
                                    
                                 
                                <!--.CK EDITOR-->
                              
                            </div>
                        </div>
                            <input type="hidden" name="hdfId" value="<?php echo $newsIDFromNews; ?>" />
                            <input type="hidden" name="hdfOldPath" value="<?php echo $oldPath2; ?>" />
                      </form>
                  </div>
                  <!--.content-->
                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
         </div><!--.col-xs-12-->
      </div><!--.row-->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
     <?php include_once "./include/footer.html";?>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.1.4 -->
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>
<!--add element-->
<script>
$(document).ready(function(){
   $("#btnAddFile").click(function(){
        $("#olFile").append("<li  id='olFile1'><input type='file'  name='fileProduct[]'/></li>");
    });
});
</script>
<!--remove element-->
<script>
    $(document).ready(function(){
        $("#btnRemove").click(function(){
            $("#olFile1").remove();
        });
    });
</script>
</body>
</html>
<?php
 } 
 else {
     header( "location: index.php" );
    exit(0);
}
?>