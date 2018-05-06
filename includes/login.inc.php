<?php
	session_start();
	include '../includes/dbconnector.php';

	$username = $_POST['userCode'];
	$userPwd = $_POST['userPwd'];

	$userQuery = "SELECT * FROM users WHERE userUsername='$username' AND userPwd='$userPwd'";
	$result = mysqli_query($conn, $userQuery);

	if(!$row = mysqli_fetch_assoc($result)){
		echo "not found" + $userQuery + $username + $userPwd;
		#exit();
	}
	else{
		$_SESSION['id'] = $row['userID'];
		$_SESSION['userlogin'] = $username;
		$_SESSION['userOrder'] = "Empty";
	}
	header("Location: ../index.php");	
?>