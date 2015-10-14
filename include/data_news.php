<?php
    $sqlSelNews = "SELECT * FROM news";
    $querySelNews = $conn->query($sqlSelNews);
?>
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">รายการข่าวกิจกรรม</h3>
               <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
               </div><!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ลำดับ</th>
                  <th>ชื่อกิจกรรม</th>
                  <th>ลบ/สถานะ</th>
                </tr>
                </thead>
                <tbody>
                
              
             <?php  $i = 1;
                    while($arrSelNews = $querySelNews ->fetch_array())
                    { ?>             
                <tr>
                  <td><?php echo $i++;  ?></td>
                  <td><a href="edit-activity.php?id=<?php echo $arrSelNews['news_id']; ?>" title="คลิกเพื่อแก้ไข"><?php echo $arrSelNews['news_name']; ?></a></td>
                  <td><button class="btn btn-xs btn-danger"><span class="fa fa-trash"></span></button>
                      <?php
                        if($arrSelNews['news_status'] != 'เผยแพร่')
                        { ?>
                            <button title="ไม่เผยแพร่" class="btn btn-xs btn-danger"><span class="fa fa-toggle-off"></span></button>
                  <?php }else{ ?>
                            <button title="เผยแพร่" class="btn btn-xs btn-success"><span class="fa  fa-toggle-on"></span></button>
                  <?php } ?>
                  
                  </td>
                </tr>
              <?php }?>
                </tbody>
                <tfoot>
                <tr>
                  <th>ลำดับ</th>
                  <th>ชื่อกิจกรรม</th>
                  <th>ลบ/สถานะ</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->


