<?php include "inc/header.php"; ?>

<?php 
    
?>

<main>
<div class="container">
    <div class="row">

        <?php
        
            if(isset($_GET['p_id'])){
                $single_post_id = $_GET['p_id'];
            }
            
        
            $query = "SELECT * FROM posts WHERE post_id = $single_post_id";

            $select_single_posts_query = mysqli_query($connection, $query);

        
            confirm($select_single_posts_query);
        
            while($row = mysqli_fetch_array($select_single_posts_query)){
                $post_id = $row['post_id'];
                $post_title = $row['post_title'];
                $post_author = $row['post_author'];
                $post_date = $row['post_date'];
                $post_image = $row['post_image'];
                $post_content = $row['post_content'];
        ?>
          
          <div class="col-xs-12">
              <img src="img/<?php echo $post_image;?>" alt=""width=200 height=200">
              <div>
                 <span class="book-title"><?php echo $post_title; ?></span>
                 <?php
				 require_once('inc/paginare.php');
					   

					paginare($post_content, $post_id);
					
				 ?>
				  
			  </div>
          </div>

        <?php } ?>


    </div>

</div>

</main>

<?php include "inc/footer.php"; ?>