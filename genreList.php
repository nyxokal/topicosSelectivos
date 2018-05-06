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
					<?php 
						if(isset($_GET['a']) /*you can validate the link here*/){
		    			$_SESSION['link']=$_GET['a'];
		    			$genre = $_SESSION['link']; }
						$titt = mysqli_query($conn, 'SELECT catName FROM categories WHERE catID=' . $genre . '');
						if($titt){
							while($rr = mysqli_fetch_array($titt)){
								echo "<h3 class='title'>" . $rr['catName'] . "</h3>";
							}
						}
						?>
				</div>
				<div class="row genreList-container">
				<?php
          $result = mysqli_query($conn, 'SELECT books.bookID, books.bookName, books.bookAuthor, books.bookCategory, books.bookPrice, books.bookImg, books.bookAmount, authors.authorID, authors.authorName, authors.authorLastName, categories.catID, categories.catName FROM books INNER JOIN authors ON authors.authorID = books.bookAuthor INNER JOIN categories ON categories.catID = books.bookCategory WHERE catID = ' . $genre . '');
          if(!$result){
            echo '<script language="javascript">alert("Error loading data")</script>';
            header("Location: ".$_SERVER["HTTP_REFERER"]);
          }
          if($result){
          	while($row = mysqli_fetch_array($result)){
							echo "<div class='col-sm-3 bestsellerSection'>
								<img class='book-cover' src='" . $row['bookImg'] . "' /><br /><br />
								<h6>" . $row['bookName'] . "</h6><p>" . $row['authorName'] . " " . $row['authorLastName'] . "</p><p>In Stock: " . $row['bookAmount'] . "</p><p>Price: $" . $row['bookPrice'] . "</p>
									<form class='invisibleForm' action='includes/cartOp.php' method='POST'>
									<input type='hidden' name='bookToAdd' value='" . $row['bookID'] ."'>
									<button type='submit' class='btn'>Add to Cart</button>
									</form></div>";
						}
						echo $_SESSION['userOrder'];
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