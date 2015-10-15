
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">รายการของที่ระลึก</h3>
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
                  <th>ชื่อของที่ระลึก</th>
                  <th>ลบ/ซ่อน</th>
                </tr>
                </thead>
                <tbody>
                  <?php
                  $i=1;
                    $sqlSelProduct = "SELECT * FROM product";
                    $querySelProduct  = $conn->query($sqlSelProduct);
                    while($arrSelProduct = $querySelProduct->fetch_array())
                    { $productID = $arrSelProduct['product_id'];
                     ?>
                <tr>
                  <td><?php echo $i++; ?></td>
                  <td><a href="edit-product.php?id=<?php echo $productID; ?>"><?php echo $arrSelProduct['product_name']; ?></a></td>
                  <td>
                     <button class="btn btn-xs btn-danger"><span class="fa fa-trash"></span></button>
                      <?php
                        if($arrSelProduct['product_status'] != 'เผยแพร่')
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
                  <th>ชื่อของที่ระลึก</th>
                  <th>ลบ/ซ่อน</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        



