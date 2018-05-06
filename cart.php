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
			<!-- CONTAINER -->
			<div class="col-md-9 bookContainer" style="background-color: salmon;">
				<!-- CART -->
				<div class="col-sm-12 index-titleContainer">
					<h3 class="title">Shopping Cart</h3>
				</div>
				<div class="row" style="margin: 0;">
				<?php 
					if($_SESSION['userOrder'] == "Empty"){
						echo "Empty";
					}
					if($_SESSION['userOrder'] != "Empty"){
						echo "Not Empty";
					}
				?></div>
				<!-- END CART -->
			</div>
			<!-- END CONTAINER -->
		</div>
	</div>
</body>
	<script type="text/javascript" href="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/popper.min.js"></script>
</html>