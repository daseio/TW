<?php include "inc/header.php"; ?>
    
    <main>
        <div class="container">
           <div class="row">
               <div class="col-xs-12">
                   <h1 class="second-title">
                       See our books 
                   </h1>
				   <br>
               </div>
           </div>
            <div class="row">
               
                <?php
                    $query = 'SELECT * FROM posts';
                    
                    $select_all_posts_query = mysqli_query($connection, $query);
                    
                    $i = 0;
                
                    while($row = mysqli_fetch_array($select_all_posts_query)){
                        $post_id = $row['post_id'];
                        $post_title = $row['post_title'];
                        $post_author = $row['post_author'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = $row['post_content'];
                        $post_content_preview = substr($post_content, 0, 70) .'...';
                        
                        
                        
                        if($i == 8){
                            break;
                        }else{
                            $i++;
                        }
                        
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
                        
                <?php
				} ?>
               
                
                <div class="col-xs-6 col-xs-offset-3 text-center"><a href="carti.php" class="btn btn-danger  btn-lg">Vezi toate cartile</a></div>
                
            </div>
            
        </div>
    </main>
    
<?php include "inc/footer.php"; ?>
