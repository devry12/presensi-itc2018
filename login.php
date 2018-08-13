
<?php
require_once "core/init.php";

if (isset($_SESSION['user'])) {
  header('location:index.php');
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

</head>

<body>


<div class="container jarakkirilogin">


<div class="row">
    <!--Panel-->
    <div class="col-sm-6">
        <div class="card">
            <div class="card-body">

<!-- Default form login -->
<form action="" method="post">
    <p class="h4 text-center mb-4">Sign in</p>

    <!-- Default input email -->
    <label for="defaultFormLoginEmailEx"  class="grey-text">Username</label>
    <input type="text" id="defaultFormLoginEmailEx" name="username" class="form-control">

    <br>

    <!-- Default input password -->
    <label for="defaultFormLoginPasswordEx" class="grey-text">password</label>
    <input type="password" id="defaultFormLoginPasswordEx" name="pass" class="form-control">

<br>
    <select class="form-control" name="hari">
        <option value="0" style="display:none">Silahkan pilih hari</option>
        <option value="1">Hari Ke 1</option>
        <option value="2">Hari Ke 2</option>
        <option value="3">Hari Ke 3</option>
        <option value="4">Hari Ke 4</option>
        <option value="5">Hari Ke 5</option>
        <option value="6">Hari Ke 6</option>
        <option value="7">Hari Ke 7</option>
        <option value="8">Hari Ke 8</option>
        <option value="9">Hari Ke 9</option>
        <option value="10">Hari Ke 10</option>
    </select>

    <div class="text-center mt-4">
        <button class="btn btn-indigo" type="submit" name="login">Login</button>
    </div>
</form>
<!-- Default form login -->

            </div>
        </div>
    </div>
    <!--/.Panel-->
</div>



</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script src="assets/mdb/js/bootstrap.js"></script>
<script src="assets/mdb/js/mdb.js"></script>
<script src="assets/mdb/js/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>


<?php
if (isset($_POST['login'])) {
    $username   = $_POST['username'];
    $pass       = $_POST['pass'];
    $hari       = $_POST['hari'];

    if (!empty($username) && !empty($pass)) {
      if ($hari != 0) {
        if (login_admin($username,$pass)) {
           $_SESSION['user'] = $username;
           $_SESSION['hari'] = $hari;
           header('location:index.php');
        }else{
            echo '<script language="javascript">';
            echo 'swal("Oops!", "Username atau Password Salah", "error");';
            echo '</script>';
        }
      }else {
        echo '<script language="javascript">';
        echo 'swal("Oops!", "Silahkan pilih hari dulu", "error");';
        echo '</script>';
      }
    }else{
        echo '<script language="javascript">';
        echo 'swal("Oops!", "Username dan Password harus diisi", "error");';
        echo '</script>';
    }
}
?>

</html>
