<?php 
	include 'header.php';
?>
	<!-- CONTENT -->
	<div class="contentContainer">
		<div class="row">
			<!-- SIDEBAR -->
			<div class="col-md-3 sidebar" style="background-color: lightblue;">
				<div style="background-color: white;">
					Browse by Category
				</div>
				<div style="background-color: white;">
					Browse by Genre
				</div>
				<div style="background-color: white;">
					Popular Books
				</div>
				<div style="background-color: white;">
					Popular Authors
				</div>
			</div>
			<!-- END SIDEBAR -->
			<!-- BOOK DISPLAYS -->
			<div class="col-md-9 bookContainer" style="background-color: salmon;">
				<!-- BESTSELLERS BOOKS -->
				<div class="col-sm-12 bestsellerTitle">
					<h3 class="title">Bestsellers</h3>
				</div>
				<div class="row" style="margin: 0;">
				<?php 
						$result = mysqli_query($conn, 'SELECT * FROM books WHERE bookIsBestseller = 1');
						if(!$result){
							header("Location: ".$_SERVER["HTTP_REFERER"]);
							echo '<script language="javascript">';
							echo 'alert("Error loading data")';
							echo '</script>';
						}
						if($result){
							while($row = mysqli_fetch_array($result)){
								echo "<div class='col-sm-3 bestsellerSection'><h6>" . $row['bookName'] . "</h6><p>";
								$author = $row['bookAuthor'];
								$secondResult = mysqli_query($conn, 'SELECT * FROM authors WHERE authorID =' . $author .'');
								if(!$secondResult){
									header("Location: ".$_SERVER["HTTP_REFERER"]);
									echo '<script language="javascript">';
									echo 'alert("Error loading data")';
									echo '</script>';
								}
								if($secondResult){
									while($rrow = mysqli_fetch_array($secondResult)){
										echo $rrow['authorName'] . " " . $rrow['authorLastName'];
									}
								}
								echo "</p><p>$" . $row['bookPrice'] . "</p><button type='submit' class='btn'>Add to Cart</button></div>";
							}
							echo "<button type='submit' class='btn'>More</button>";
						}

				?></div>
				<!-- END BESTSELLER BOOKS -->
			</div>
			<!-- END BOOK DISPLAYS -->
		</div>
	</div>
</body>
	<script type="text/javascript" href="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/popper.min.js"></script>
</html>