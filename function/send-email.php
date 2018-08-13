<?php

function GetDataStudents()
{
  global  $link;
  $query = "SELECT * FROM participants";
  $result = mysqli_query($link,$query);
  return $result;
}


 ?>
