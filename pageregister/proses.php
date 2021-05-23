<?php
date_default_timezone_set('Asia/Jakarta');
require("routeros_api.class.php");
$API = new routeros_api();
$API->debug = false;
$user_mikrotik  = "musaeri";
$password_mikrotik  = "alhanan.123#";
$ip_mikrotik    = "172.16.10.1";

if($API->connect($ip_mikrotik, $user_mikrotik, $password_mikrotik)){
  $username = $_POST['username'];
  $password = $_POST['password'];
  $mac 		  = $_POST['mac'];
  $comment	= $_POST['coment'];

  // $username = "MUSAERI";
  // $password = "MUSAERI";
  // $mac 		  = "90:60:F1:85:F4:40";
  // $comment	= "081210003701";

  $API->comm("/ip/hotspot/user/add", array(
		      "server"			=> "all",
          "name"     		=> $username,
          "password"	 	=> $password,
		      "profile"			=> "Harian",
		      "mac-address"	=> $mac,
		      "comment"			=> $comment,
		  
			));
  echo "<script>window.location='http://192.168.20.1/sukses.html'</script>";
} else {
echo "Server Router tidak koneksi";
}


//koneksi database

// if ($_SERVER['SERVER_NAME']=='localhost') {
//     # code...
//     $db_host = file_get_contents("../config/localhost_1.txt");
//     $db_user = file_get_contents("../config/users_1.txt");
//     $db_pass = file_get_contents("../config/password_1.txt");
//     $db_name = file_get_contents("../config/database_1.txt");
// } else {
//     # code...
//     $db_host = file_get_contents("../config/localhost.txt");
//     $db_user = file_get_contents("../config/users.txt");
//     $db_pass = file_get_contents("../config/password.txt");
//     $db_name = file_get_contents("../config/database.txt");
// }

$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "dbcrudoop";


try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} 
catch(PDOException $e) 
{
    //show error
    die("Terjadi masalah: " . $e->getMessage());
    // $msg="Connection Failed ";
    // header('location:index.php');
}

$ins=$db->prepare("INSERT INTO tblhistorylogin (field_mac,field_username,field_password,field_name,field_handphone,field_profile,field_date,field_time) VALUES 
                                               (:macaddress,:username,:passworde,:nameuser,:handphone,:profilee,:datee,:timee)"
                 );
$ins->execute(array( ':macaddress'=>$mac,
                     ':username'=>$username,
                     ':passworde'=>$password,
                     ':nameuser'=>"name User",
                     ':handphone'=>$comment,
                     ':profilee'=>"Harian",
                     ':datee'=>  date("Y-m-d"),
                     ':timee'=> date("h:i:s")                  
                    ));


?>