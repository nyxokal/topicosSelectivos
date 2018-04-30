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
					<h3 class="title">Categories</h3>
				</div>
				<div class="row genreList-container">
				<?php
          $result = mysqli_query($conn, 'SELECT DISTINCT books.bookCategory, categories.catID, categories.catName FROM books INNER JOIN categories ON categories.catID = books.bookCategory ORDER BY catName ASC');
          if(!$result){
            echo '<script language="javascript">alert("Error loading data")</script>';
            header("Location: ".$_SERVER["HTTP_REFERER"]);
          }
          if($result){
          	while($row = mysqli_fetch_array($result)){
          		$catName = $row['catName'] . $row['catID'];
          		$catName = str_replace(' ', '', $catName);
          		$catName = str_replace("'", "", $catName);
          		$catName = str_replace('&', '', $catName);
          		$catName = str_replace(',', '', $catName);
							echo "<div class='col-sm-12 categoriesTitles'>" . $row['catName'] ."<button class='btn catBtn'><a class='category-a' href='genreList.php?a=" . $row['catID'] . "' name='genre'>View More</a></button></div>";
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