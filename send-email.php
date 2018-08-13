<?php require_once 'layout/header.php';
$students = GetDataStudents();
$email = [];
 ?>



        <h2>Reminder Email</h2>

        <div class="card">
            <div class="card-body">

                <!--Table-->
                <table class="table table-hover table-responsive-md table-fixed" id="list-students">

                    <!--Table head-->
                    <thead>
                        <tr>
                            <th>Select</th>
                            <th>Name</th>
                            <th>Telephone</th>
                            <th>Email</th>
                            <th>Nim</th>
                        </tr>
                      </thead>

                    <!--Table head-->

                    <!--Table body-->
                    <tbody>
                      <?php $no = 1; while ($row  = mysqli_fetch_assoc($students)) {?>
                    <tr>
                      <td>  <!-- Default checked -->
                        <div class="custom-control custom-checkbox ">
                          <input type="checkbox" class="custom-control-input select" name="select" value="<?=$row['email']?>" id="select<?=$row['phone']?>">
                          <label class="custom-control-label" for="select<?=$row['phone']?>"></label>
                        </div>
                      </td>
                      <td><?=$row['name']?></td>
                      <td><?=$row['phone']?></td>
                      <td><?=$row['email']?></td>
                      <td><?=$row['nim']?></td>
                    </tr>
                  <?php $no++; } ?>
                  </tbody>
                    <!--Table body-->

                </table>
                <!--Table-->

            </div>
        </div>
        <div class="card">
            <div class="card-body">
              <?php $data = "<span id='results'></span>";
                $data = str_replace(' ', ',', $data);
                echo $data;
               ?>
               <input type="text" class="form-control" name="" value="">
              <br>
              <p><b>Email:</b> <span id="emails"></span></p>
              <button type="button" id="show" name="button">Show</button>
              <?php
                $a = json_decode( $_COOKIE['email'], true );
                print_r($a);
                ?>
            </div>
        </div>

</div>

</body>

<?php require_once 'layout/footer.php'; ?>
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
  $('#list-students').DataTable();
} );
</script>

<script>

  var tmp = [];
  var vPool="";
  $("input[name='select']").change(function() {
  var checked = $(this).val();
    if ($(this).is(':checked')) {
      tmp.push(checked);
    }else{
    tmp.splice($.inArray(checked, tmp),1);
    }
  });



  $("input[name='select']").change(function() {
    alert(tmp);
    jQuery.each(tmp, function(i, val) {
    vPool += val+" ";
    });
  $.cookie("email",JSON.stringify(tmp));
  });


</script>
</html>
