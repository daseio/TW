<?php include "inc/header.php"; ?>
    
    <main id="carti">
        <div class="container">
           <div class="row">
               <div class="col-xs-12">
                   <h2 class="second-title">
                       See our books 
                   </h2>
               </div>
               <div class="col-xs-12">
                   <form action="" method="post">
                       <div class="form-group">
                           <select name="filter" id="" class="form-control">
                               <option value="7-12">7-12 ani</option>
                               <option value="12-18">12-18</option>
                           </select>
                       </div>
					   
                       <div class="form-group"><input type="submit" name="fil" class="btn btn-success"></div>
                   </form>
               </div>
           </div>
		   <div class="semne">
				<?php
					if(isset($_SESSION['username'])){
						$id_user=mysqli_fetch_array(mysqli_query($connection, "select * from users where username='".$_SESSION['username']."'"));
						$id=$id_user['user_id'];
						$query = "SELECT s.semn,p.post_title from semn_carte s, posts p  WHERE id_user='{$id}' and s.id_carte=p.post_id";

                        $search_query = mysqli_query($connection, $query);

                        confirm($search_query);

                        $count = mysqli_num_rows($search_query);
						echo '<h3>Semne de carte:';
                         while($row = mysqli_fetch_array($search_query)){
                            $link = $row['semn'];
							$nume_carte =$row['post_title'];
							 echo ', <a href="'.$link.'">'.$nume_carte.'</a>' ;
						 }
						echo ' </h3>';
					
					   
					}
					   ?>

					   </div>
            <div class="row">
               
                <?php
                
                    if(isset($_POST['fil'])){
                        $filter = $_POST['filter'];
                        $query = "SELECT * FROM posts WHERE post_category_id='$filter' ";
                        $filter_query = mysqli_query($connection, $query);
                        
                        
                        while($row = mysqli_fetch_array($filter_query)){
                        $post_id = $row['post_id'];
                        $post_title = $row['post_title'];
                        $post_author = $row['post_author'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = $row['post_content'];
                        $post_content_preview = substr($post_content, 0, 70) .'...';
                            
                ?>
                
                 <div class="col-md-4">
                        <div class="book-preview">
                            <div class="preview-img"><img src="img/<?php echo $post_image;?>" alt=""></div>
                            <span class="about-author">Trimits de: <strong><?php echo $post_author; ?></strong> la data: <strong class="date"><?php echo $post_date; ?></strong></span>
                            <span class="book-title"><?php echo $post_title; ?></span>
                            <span class="book-description"><?php echo $post_content_preview; ?></span>
							
                            <span class="full-description"><?php echo'<a href="post.php?p_id='.$post_id.'&page=0">Read more</a>'?></span>
                            
                        </div>
                    </div>
                    
                    <?php } }else{ 
                
            
                
                    $query = 'SELECT * FROM posts';
                    
                    $select_all_posts_query = mysqli_query($connection, $query);
                    
                
                
                    while($row = mysqli_fetch_array($select_all_posts_query)){
                        $post_id = $row['post_id'];
                        $post_title = $row['post_title'];
                        $post_author = $row['post_author'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = $row['post_content'];
                        $post_content_preview = substr($post_content, 0, 70) .'...';
                        
                        
                        
                ?>
                   <div class="col-md-4">
                        <div class="book-preview">
                            <div class="preview-img"><img src="img/<?php echo $post_image;?>" alt=""width=200 height=350></div>
							<span  class="date">Data adaugare:<strong><?php echo $post_date; ?></strong>
                            <span class="about-author">Autor: <strong><?php echo $post_author; ?></strong> </span>
                            <span class="book-title"><?php echo $post_title; ?></span>
                            <span class="book-description"><?php echo $post_content_preview; ?></span>
                            <span class="full-description"><?php echo'<a href="post.php?p_id='.$post_id.'&page=0">Read more</a>'?></span>
                            
                        </div>
                    </div>
                        
                <?php } }?>
               
                
                <div class="col-xs-6 col-xs-offset-3 text-center"><a href="carti.php" class="btn btn-danger  btn-lg">Vezi toate cartile</a></div>
                
            </div>
            
        </div>
    </main>
    
<?php include "inc/footer.php"; ?>
