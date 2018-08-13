<?php

// ================================== Presensi untuk office =======================================
function select_data_office($hari){
    global $link;
    $query = "SELECT * FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 4 AND p.day = $hari Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================

// ================================== Presensi untuk db =======================================


function select_data_db($hari){
    global $link;
    $query = "SELECT * FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 5 AND p.day = $hari Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================
// ================================== Presensi untuk data =======================================


function select_data_data($hari){
    global $link;
    $query = "SELECT * FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 6 AND p.day = $hari Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================
// ================================== Presensi untuk data =======================================


function select_data_digital($hari){
    global $link;
    $query = "SELECT * FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 7 AND p.day = $hari Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================


function delete_data_db($tlp){
        global $link;
        $query = "DELETE FROM presensi WHERE phone = '$tlp'";
        $result = mysqli_query($link,$query);
        return $result;
}
function delete_data_data($tlp){
        global $link;
        $query = "DELETE FROM presensi WHERE phone = '$tlp'";
        $result = mysqli_query($link,$query);
        return $result;
}
function delete_data_digital($tlp){
        global $link;
        $query = "DELETE FROM presensi WHERE phone = '$tlp'";
        $result = mysqli_query($link,$query);
        return $result;
}
function delete_data_office($tlp){
        global $link;
        $query = "DELETE FROM presensi WHERE phone = '$tlp'";
        $result = mysqli_query($link,$query);
        return $result;
}


// ========================================================= Fungsi untuk semua =======================================

function add_presensi($data){
    global $link;
    $query = "INSERT INTO presensi (phone) VALUES ('$data')";
    $result = mysqli_query($link,$query);
    return $result;
}

function select_presensi($data){
    global $link;
    $query = "Select * from presensi where phone='$data'";
    $result = mysqli_query($link,$query);
    return $result;
}


function select_divisi($data){
    global  $link;
    $query = "SELECT * FROM participants Where phone = '$data'";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================

// =============================== Hitung Gelombang =====================================================================
// =======================================================================================================================
?>
