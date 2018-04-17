<?php 
	include 'header.php';
?>
	<!-- CONTENT -->
	<div class="loginContainer">
		<div class="row">
			<div class="col-sm-2 col-md-3"></div>
			<div class="col-sm-8 col-md-6 logCont" >
					<div id="loginForm loginContainer">
						<form action="includes/login.inc.php" method="POST">
		     			<h3 id="loginHeader">LOGIN</h3>
		     			<input class="textInput" type="text" name="userCode" placeholder="Type your ID" /><br/>
		     			<input class="textInput" type="password" name="userPwd" placeholder="Type your Password" /><br/>
		     			<button type="submit" class="btn loginbutton">Login</button>
		    		</form>
					</div>
				</div>
			<div class="col-sm-2 col-md-3"></div>
			<!-- End Content -->
	</div>
</body>
	<script type="text/javascript" href="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/popper.min.js"></script>
</html>