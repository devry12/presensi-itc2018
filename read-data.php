<?php
require_once "core/init.php";




    // Design initial table header
    $data = '<table class="table table-bordered table-striped">';
      $hari =  $_SESSION['hari'];
    $select = select_data_data($hari);

    // if query results contains rows then featch those rows
    if(mysqli_num_rows($select) > 0)
    {
        $number = 1;
        while($row = mysqli_fetch_assoc($select))
        {
            $data .= '<tr>
                <th>'.$number.'</th>
                <td>'.$row['name'].'</td>
                <td>'.$row['phone'].'</td>
                <td>'.$row['email'].'</td>
                <td>'.$row['nim'].'</td>
                <td><a href="delete-data.php?tlp_db='.$row['phone'].'" class="btn btn-sm btn-danger">Delete</a></td>';
            $number++;
        }
    }
    else
    {
        // records now found
        $data .= '<tr><td colspan="6">Records not found!</td></tr>';
    }
    $data .= '</table>';
    echo $data;
?>
