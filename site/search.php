<?php include "inc/header.php"; ?>  
    <main>
        <div class="container">

            <div class="row">
               
                <?php
                    if(isset($_POST['find'])){
        
                        $search = $_POST['search'];

                        $query = "SELECT * from posts WHERE post_tags LIKE '%$search%' ";

                        $search_query = mysqli_query($connection, $query);

                        confirm($search_query);

                        $count = mysqli_num_rows($search_query);

                         while($row = mysqli_fetch_array($search_query)){
                            $post_id = $row['post_id'];
                            $post_title = $row['post_title'];
                            $post_author = $row['post_author'];
                            $post_date = $row['post_date'];
                            $post_image = $row['post_image'];
                            $post_content = $row['post_content'];
                            $post_content_preview = substr($post_content, 0, 100) .'...';

                        if($count == 0){
                           $search_error = "<h4> NO RESULTS </h4>";
                        }else{
                            $search_error = "";
                        }
                ?>
                   <div class="col-md-4">
                        <div class="book-preview">
                            <?php echo $search_error; ?>
                            <div class="preview-img"><img src="img/<?php echo $post_image;?>" alt=""></div>
                            <span class="book-title"><?php echo $post_title; ?></span>
                            <span class="book-description"><?php echo $post_content_preview; ?></span>
                            <span class="full-description"><a href="post.php?p_id=<?php echo $post_id; ?>">Read more</a></span>
                        </div>
                    </div>
                        
                <?php } ?>
               
                <?php } ?>
            </div>
            
        </div>
    </main>



<?php include "inc/footer.php"; ?>