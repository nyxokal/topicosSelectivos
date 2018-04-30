<?php
	session_start(); 
	include 'dbconnector.php';

	$userID = $_SESSION['id'];
	$name = $_POST['userName'];
	$lastName = $_POST['userLName'];
	$username = $_POST['userUsername'];
	$country = $_POST['userCountry'];
	$userPwd = $_POST['userPwd'];

	if(isset($name) && isset($lastName) && isset($username) && isset($country) && isset($userPwd)){
		$checkerQuery = mysqli_query($conn, "SELECT * FROM users");
		if($checkerQuery){
			$uploadQuery = mysqli_query($conn, "UPDATE users SET userName='" . $name . "', userLastName='" . $lastName . "', userUsername='" . $username . "', userPwd='" . $userPwd . "', userCountry='" . $country . "' WHERE userID ='" . $userID . "'");
			if($uploadQuery){
				echo '<script language="javascript">alert("Insertion successful")</script>';
				header("Location: ../profile.php");
			}
			if(!$uploadQuery){
				$error = 'Error: ' . mysqli_error($conn);
				echo "Query failure";
			}
		}
		if(!$checkerQuery){
			header("Location: ".$_SERVER["HTTP_REFERER"]);
			echo '<script language="javascript">alert("Error in insertion")</script>';
			header("Location: ".$_SERVER["HTTP_REFERER"]);
		}
	}
?>
