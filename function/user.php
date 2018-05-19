<?php
function login_admin($username,$password){
    global $link;
  $query = "SELECT * FROM users Where name = '$username'";
  $data =  mysqli_query($link,$query);
  $data = mysqli_fetch_assoc($data);
  $pass = mysqli_real_escape_string($link,$password);
  if (password_verify($pass,$data['password'])) {
    return true;
  }else {
    return false;
  }
}
?>