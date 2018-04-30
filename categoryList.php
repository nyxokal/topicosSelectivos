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
					<a class="sidebar-a"  href="genreList.php">Browse by Genre</a>
				</div>
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
					<h3 class="title">Genres</h3>
				</div>
				<div class="row genreList-container">
				<?php
          $result = mysqli_query($conn, 'SELECT books.bookID, books.bookName, books.bookAuthor, books.bookCategory, books.bookPrice, authors.authorID, authors.authorName, authors.authorLastName, categories.catID, categories.catName FROM books INNER JOIN authors ON authors.authorID = books.bookAuthor INNER JOIN categories ON categories.catID = books.bookCategory ORDER BY catName ASC');
          if(!$result){
            echo '<script language="javascript">alert("Error loading data")</script>';
            header("Location: ".$_SERVER["HTTP_REFERER"]);
          }
          if($result){
          	while($row = mysqli_fetch_array($result)){
          		$bookCategory = $row['bookCategory'];
          		$catID = $row['catID'];
							echo "<div class='col-sm-12 bestsellerSubTitle'>" . $row['catName'] . " + " . $row['catID'] . "</div>";
          		if($bookCategory == $catID){
								echo "<div class='col-sm-3 bestsellerSection'><h6>" . $row['bookName'] . " + " . $row['bookID'] . " + " . $row['bookCategory'] . "</h6><p>" . $row['authorName'] . " " . $row['authorLastName'] . "</p><p>$" . $row['bookPrice'] . "</p><button type='submit' class='btn'>Add to Cart</button></div>";
          		}
						}
          }

				?>
				</div>
				<!-- END BESTSELLER BOOKS -->
			<!-- END BOOK DISPLAYS -->
		</div>
	</div>
</body>
	<script type="text/javascript">
		var row = document.getElemenyById("genreList-alphabetical");
		var cellValues = row.getElementsByTagName("td");

		for (var i = 0; i >= 26; i++) {
			var A = cellValues[i].innerText;
			document.write(A);
		}
	
	</script>
	<script type="text/javascript" href="js/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery/3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/popper.min.js"></script>
</html>