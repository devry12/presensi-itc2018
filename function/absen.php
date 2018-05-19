<?php

// ================================== Presensi untuk office =======================================
function select_data_office(){
    global $link;
    $query = "SELECT p.phone, p.email, p.name, p.nim FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 1 Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================

// ================================== Presensi untuk db =======================================


function select_data_db(){
    global $link;
    $query = "SELECT p.phone, p.email, p.name, p.nim FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 2 Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================
// ================================== Presensi untuk data =======================================


function select_data_data(){
    global $link;
    $query = "SELECT p.phone, p.email, p.name, p.nim FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 3 Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================
// ================================== Presensi untuk data =======================================


function select_data_digital(){
    global $link;
    $query = "SELECT p.phone, p.email, p.name, p.nim FROM  participants p,presensi pre WHERE pre.phone = p.phone AND p.division_id = 4 Order By pre.waktu_presensi DESC";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================

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
    $query = "SELECT division_id FROM participants Where phone = '$data'";
    $result = mysqli_query($link,$query);
    return $result;
}

// =======================================================================================================================
?>