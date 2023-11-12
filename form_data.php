<?php 
$id="STU".rand(100,999);
$sn=$_POST['s_name'];
$fn=$_POST['f_name'];
$gen=$_POST['gender'];
$add=$_POST['address'];
$ph=$_POST['ph_no'];
$email=$_POST['email'];
$dob=$_POST['dob'];
$adm_date=date("yyyy-mm-dd"); 
$sts="Active";

$con= mysqli_connect("localhost", "root", "");
if (!$con) {
  die("Mysql Connection failed: " . mysqli_connect_error());
}
echo "Mysql Connected successfully\n";

$db=mysqli_select_db($con, "sms");
if (!$db) {
  die("database Connection failed: " . mysqli_connect_error());
}
echo "Database Connected successfully";

$query="INSERT INTO student (stu_id,s_name,f_name,gender,address,ph_no,email, dob, adm_date, state) VALUES ('$id', '$sn', '$fn', '$gen', '$add', $ph, '$email', '$dob', '$adm_date', '$sts')";
//echo $query; die;
$res = mysqli_query($con, $query);

if (!$res) {
  die("Problem in Data insertion " );
}
//echo "Data inserted successfully\n";
 header("Location: user.php");
?>