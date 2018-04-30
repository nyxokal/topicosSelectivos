<?php 
	include 'header.php';
?>
	<!-- CONTENT -->
	<div class="contentContainer">
		<div class="row">
			<!-- SIDEBAR -->
			<div class="col-md-3 sidebar">
				<div class="sidebar-div">
					<a class="sidebar-a" href="categories.php">Browse by Category</a>
				</div>
				<div class="sidebar-div">
					<a class="sidebar-a"  href="popularBooks.php">Popular Books</a>
				</div>
				<div class="sidebar-div">
					<a class="sidebar-a"  href="popularAuthors.php">Popular Authors</a>
				</div>
			</div>
			<!-- END SIDEBAR -->
			<div class="col-md-9 userContainer">
				<?php 
					$userID = $_SESSION['userlogin'];
					$result = mysqli_query($conn, 'SELECT users.userID, users.userName, users.userLastName, users.userUsername, users.userPwd, users.userCountry, countries.countryID, countries.countryName FROM users INNER JOIN countries ON users.userCountry = countries.countryID WHERE userUsername="' . $userID . '"');
					if(!$result){
            echo '<script language="javascript">alert("Error loading data")</script>';
            header("Location: ".$_SERVER["HTTP_REFERER"]);
					}
					if($result){
						#echo "Logged in as " . $userID;
						while($row = mysqli_fetch_array($result)){
							echo "<h3>Edit Profile</h3><br/><div class='profile-wrapper'><form action='includes/profileEdit.php' method='POST' id='profileEditForm'><dl>
									<dt>My Username:</dt>
									<dd><input type='text' name='userUsername' value='". $row['userUsername'] ."'></dt>
									<dt>My Name:</dt>
									<dd><input type='text' name='userName' value='". $row['userName'] . "'>
									<input type='text' name='userLName' value='" . $row['userLastName'] ."'></dd>
									<dt>My Country:</dt>
									<dd><select form='profileEditForm' name='userCountry'>";
								$countriesResult = mysqli_query($conn, 'SELECT * FROM countries');
								if($countriesResult){
									while($rr = mysqli_fetch_array($countriesResult)){
									echo "<option value='" . $rr['countryID'] . "'>" . $rr['countryName'] . "</option>";
									}
								}
								if(!$countriesResult){
									echo "Death";
								}
								echo "</select></dd>
									<dt>My Password:</dt>
									<dd><input type='text' name='userPwd' value='" . $row['userPwd'] . "'></dd>
								</dl>
									<button type='submit' class='btn edit-btn'>Submit</button>
									<button class='btn edit-btn'><a class='category-a' href='profile.php'>Cancel</a></button></form>
								</div>";
						}
					}
				?>
			</div>
		</div>
	</div>
</body>
	<script type="text/javascript" href="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/popper.min.js"></script>
</html>