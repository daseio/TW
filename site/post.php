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
          
          <div class="coperta_pagina">
              <img src="img/<?php echo $post_image;?>" alt=""width=200 height=350">
              <div>
                 <span class="book-title"><?php echo $post_title; ?></span>
                 <?php
				 require_once('inc/paginare.php');
					   

					paginare($post_content, $post_id);
					if(isset($_SESSION['username'])){
		
					$id_user=mysqli_fetch_array(mysqli_query($connection, "select * from users where username='".$_SESSION['username']."'"));
					$id=$id_user['user_id'];
					//$query = "INSERT INTO 'semn_carte' ('id_user', 'id_carte', 'semn') VALUES('".$id."', '".$post_id."','" .$_SERVER["REQUEST_URI"]."') ";
					$query = "INSERT INTO semn_carte(id_user, id_carte, semn)";
            $query .= "VALUES('{$id}','{$post_id}','{$_SERVER["REQUEST_URI"]}') ON DUPLICATE KEY UPDATE semn='{$_SERVER["REQUEST_URI"]}'";
                     $insert_query = mysqli_query($connection, $query);
                    confirm($insert_query);
					//echo $id;
					//echo $post_id;
					//echo $_SERVER["REQUEST_URI"];
					
					
		}
					
				 ?>
				  
			  </div>
          </div>

        <?php } ?>


    </div>

</div>

</main>

<?php include "inc/footer.php"; ?>