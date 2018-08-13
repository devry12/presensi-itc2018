
<?php
require_once "core/init.php";


if (!isset($_SESSION['user'])) {
  header('location:login.php');
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Presensi</title>
    <link rel="stylesheet" href="assets/mdb/css/bootstrap.css">
    <link rel="stylesheet" href="assets/mdb/css/mdb.css">
    <link rel="stylesheet" href="assets/mdb/css/style.css">
    <link href="https://unpkg.com/ionicons@4.1.1/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>ITC 2018</h3>
            </div>

            <ul class="list-unstyled components">
                <li>
                    <a href="">Home</a>
                </li>
                <li>
                    <a href="index.php">Dashboard</a>
                </li>
                <li>
                    <a href="#presensi" data-toggle="collapse" aria-expanded="false">Presensi Divisi <ion-icon name="arrow-dropdown"></ion-icon></a>
                    <ul class="collapse list-unstyled" id="presensi">
                        <li>
                            <a href="presensi-office.php">
                                <ion-icon name="clipboard"></ion-icon> Office Administration</a>
                        </li>
                        <li>
                            <a href="presensi-db.php">
                                <ion-icon name="filing"></ion-icon> Database Management</a>
                        </li>
                        <li>
                            <a href="presensi-data.php">
                                <ion-icon name="filing"></ion-icon> Data Scientist</a>
                        </li>
                        <li>
                            <a href="presensi-digital.php">
                                <ion-icon name="play-circle"></ion-icon> Digital Interactive Media</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#export" data-toggle="collapse" aria-expanded="false">Export Presensi <ion-icon name="arrow-dropdown"></ion-icon></a>
                    <ul class="collapse list-unstyled" id="export">
                        <li>

                            <a href="e-office.php">
                                <ion-icon name="clipboard"></ion-icon> Office Administration</a>
                        </li>
                        <li>
                            <a href="e-db.php">
                                <ion-icon name="filing"></ion-icon> Database Management</a>
                        </li>
                        <li>
                            <a href="e-data.php">
                                <ion-icon name="filing"></ion-icon> Data Scientist</a>
                        </li>
                        <li>
                            <a href="e-digital.php">
                                <ion-icon name="play-circle"></ion-icon> Digital Interactive Media</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#email" data-toggle="collapse" aria-expanded="false">Email</a>
                    <ul class="collapse list-unstyled" id="email">
                        <li>

                            <a href="#">
                                <ion-icon name="clipboard"></ion-icon>Send Email</a>
                        </li>
                        <li>
                            <a href="#">
                                <ion-icon name="filing"></ion-icon> Setting</a>
                        </li>
                        <li>
                            <a href="#">
                                <ion-icon name="filing"></ion-icon> Data Scientist</a>
                        </li>
                        <li>
                            <a href="#">
                                <ion-icon name="play-circle"></ion-icon> Digital Interactive Media</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="logout.php">Logout</a>
                </li>

            </ul>

        </nav>

        <!-- Page Content Holder -->
        <div id="content">

            <nav class="navbar navbar-default">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="navbar-btn">
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#">Page</a>
                            </li>
                            <li>
                                <a href="#">Page</a>
                            </li>
                            <li>
                                <a href="#">Page</a>
                            </li>
                            <li>
                                <a href="#">Page</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
