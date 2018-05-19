
<?php 
require_once "core/init.php";
$select = select_presensi($_POST['presensi']);
$divisi = select_divisi($_POST['presensi']);

$row = mysqli_fetch_assoc($divisi);
$data = mysqli_num_rows($select);
if ($row['division_id'] == 3) {
    if ($data<1) {
        if (add_presensi($_POST['presensi'])) {
            echo "berhasil";
        }else {
            echo "gagal";
        }
    }else{
        echo "sudah";
    }
}else {
    echo "salah";
}

?>