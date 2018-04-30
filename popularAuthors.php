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
				</div><!--
				<div class="sidebar-div">
					<a class="sidebar-a"  href="genreList.php">Browse by Genre</a>
				</div>-->
				<div class="sidebar-div">
					<a class="sidebar-a"  href="popularBooks.php">Popular Books</a>
				</div>
				<div class="sidebar-div">
					<a class="sidebar-a"  href="popularAuthors.php">Popular Authors</a>
				</div>
			</div>
			<!-- END SIDEBAR -->
			<!-- BOOK DISPLAYS -->
			<div class="col-md-9 bookContainer" style="background-color: salmon;">
				<!-- BESTSELLERS BOOKS -->
				<div class="col-sm-12 index-titleContainer">
					<h3 class='title'>Authors</h3>
				</div>
				<div class="row genreList-container">
				<?php
          $result = mysqli_query($conn, 'SELECT authors.authorID, authors.authorName, authors.authorLastName, authors.authorCountry, authors.authorDescription, authors.authorImg, countries.countryID, countries.countryName FROM authors INNER JOIN countries ON authors.authorCountry = countries.countryID ORDER BY authors.authorName ASC');
          if(!$result){
            echo '<script language="javascript">alert("Error loading data")</script>';
            header("Location: ".$_SERVER["HTTP_REFERER"]);
          }
          if($result){
          	while($row = mysqli_fetch_array($result)){
							echo "<div class='col-sm-6 authorsSection'>
								<img class='autors-img' src='" . $row['authorImg'] . "' />
								<h3>" . $row['authorName'] . " " . $row['authorLastName'] . "</h3><h5>" . $row['countryName'] ."</h5>
								<p>" . $row['authorDescription'] . "</p>
							<button type='submit' class='btn authors-btn'>See More</button></div>";
						}
          }

				?>
				</div>
				<!-- END BESTSELLER BOOKS -->
			<!-- END BOOK DISPLAYS -->
		</div>
	</div>
</body>
	<script type="text/javascript" href="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/popper.min.js"></script>
</html>