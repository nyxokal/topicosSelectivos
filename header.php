<?php
	session_start();
  include 'includes/dbconnector.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>FUCK</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bookstore.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>

	<!-- TOP NAVBAR (NAVIGATION) -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	    <a class="navbar-brand" href="index.php">BRAND</a>
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item active">
	        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="bestsellers.php">Bestsellers</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="contact.php">Contact</a>
	      </li>
	      <li class="nav-item">
	      	<?php
			     	if(isset($_SESSION['id'])){
			     		echo '<a class="nav-link" href="profile.php">Profile</a>';
			     	}
			     	else{
			     		echo '<a class="nav-link" href="loginpage.php"><img src="resources/open-iconic-master/png/person.png">Login</a>';
			     	}
			     ?>
	      </li>
	      	<?php 
			     	if(isset($_SESSION['id'])){
		      		echo '<li class="nav-item"><a class="nav-link" href="includes/logout.inc.php">Logout</a></li>';
			     	}
	      	?>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-3" type="search" placeholder="Search by author, title, keyword" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	      <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Advanced Search</button>
	    </form>
	  </div>
	</nav>
	<!-- TOP NAVBAR END -->
	<!-- LOWER NAVBAR END (MONEY, SHOPPING) -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item active">
	        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="tracker.php">Order Tracker</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="wishlist.php">Wishlist</a>
	      </li>
	    </ul>
	    <form class="form-inline">
		    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">	
		      <li class="nav-item">
		      	<div class="dropdown">
						  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Currency
						  </button>
						  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						    <a class="dropdown-item" href="#">Action</a>
						    <a class="dropdown-item" href="#">Another action</a>
						    <a class="dropdown-item" href="#">Something else here</a>
						  </div>
						</div>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="cart.php">Shopping Cart</a>
		      </li>
		    </ul>
	    </form>
	  </div>
	</nav>
	<!-- LOWER NAVBAR END -->