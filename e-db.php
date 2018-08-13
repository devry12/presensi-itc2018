<?php
require_once 'core/init.php';
 header("Content-type: application/vnd-ms-excel");
 header("Content-Disposition: attachment; filename=itc-2018-Database-hari-".$_SESSION['hari'].".xls");
 header("Pragma: no-cache");
 header("Expires: 0");

 $hari =  $_SESSION['hari'];
 $select = select_data_db($hari);
 ?>

 <table border="1" width="100%">

      <thead>

        <tr>
          <th>No</th>
          <th>Nama Lengkap</th>
          <th>Nim</th>
          <th>Nomer Handphone</th>
          <th>Email</th>
          <th>Asal Sekolah</th>
          <th>Prodi</th>
        </tr>
      </thead>

      <tbody>

        <?php $no = 1; while ($row = mysqli_fetch_assoc($select)){?>
          <tr>
              <th scope="row"><?=$no?></th>
              <td><?=$row['name']?></td>
              <td><?=$row['nim']?></td>
              <td><?=$row['phone']?></td>
              <td><?=$row['email']?></td>
              <td><?=$row['school']?></td>
              <td><?=$row['prodi']?></td>

            </tr>

        <?php  $no++; } ?>

      </tbody>

 </table>
