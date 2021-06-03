<?php
// doc du lieu tu website gui ve;
$onpump   = $_POST["time1"];
$offpump  = $_POST["time2"];
$onlight  = $_POST["time3"];
$offlight = $_POST["time4"];
$pumpbt   = $_POST["pumpbt"];
$lightbt  = $_POST["lightbt"];
$mode     = $_POST["mode"];
// ket noi database
include("config.php");

//gui data xuong database
$sql  = "update timesetting set onpump='$onpump',offpump='$offpump',onlight='$onlight',offlight='$offlight',mode='$mode' ";
mysqli_query($conn, $sql);
$sql1 = "update timesetting set pumpbutton='$pumpbt',lightbutton='$lightbt',mode='$mode' ";
mysqli_query($conn, $sql1);
// ngat ket noi voi database

mysqli_close($conn);
?>