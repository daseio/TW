<?php include "inc/header.php"; ?>

<?php

    if(isset($_POST['create_post'])){
        
        $post_title = $_POST['title'];
        $post_author = $_POST['author'];
        $post_category_id = $_POST['post_category_id'];
        
        $post_image = $_FILES['image']['name'];
        $post_image_temp = $_FILES['image']['tmp_name'];
        
        $post_tags = $_POST['post_tags'];
        $post_content = $_POST['post_content'];
        $post_date = date('d-m-y');
        
        move_uploaded_file($post_image_temp, "img/$post_image");
        
        if(strlen($post_title) < 2){
            $title_error = "Numele cartii trebuie sa aiba cel putin 2 caractere";
        }else{
            $title_error = "";
        }
        
        if(empty($post_author)){
            $post_author = "Anonim";
        }
        
        if(strlen($post_content) < 50){
            $content_error = "Continutul cartii trebuie sa fie de minim 50 caractere";
        }else{
            $content_error = "";
        }
        
        
        if($title_error == "" && $content_error == ""){
            
            $query = "INSERT INTO posts(post_category_id, post_title, post_author, post_date,post_image, post_content, post_tags)";
            $query .= "VALUES('{$post_category_id}','{$post_title}','{$post_author}',now(),'{$post_image}','{$post_content}','{$post_tags}')";

            $create_post_query = mysqli_query($connection, $query);

            confirm($create_post_query);
            
            $success = "Cartea s a adaugat cu succces !";
        }else{
            $success = "";
        }
        
        
    }else{
        $success = $title_error = $content_error =  "";
    }


?>
<main id="add-post">

<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <h1 class="title">
                Trimite o carte
            </h1>
            <strong><?php echo $success; ?></strong>
        </div>
        <div class="col-xs-12">
            <form action="" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="title">Post Title</label>
                    <input type="text" class="form-control" name="title" required placeholder="<?php echo $title_error; ?>">
                </div>

                <div class="form-group">
                    <label for="title">Post category id</label>
                    <select name="post_category_id" id="title" class="form-control">
                        <option>Alegeti o categorie</option>
                        <option value="7-12">7-12 ani</option>
                        <option value="12-18">12-18 ani</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="title">Post author</label>
                    <input type="text" class="form-control" name="author">
                </div>

                <div class="form-group">
                    <label for="title">Post image</label>
                    <input type="file" class="form-control" name="image" required>
                </div>

                <div class="form-group">
                    <label for="title">Post tags</label>
                    <input type="text" class="form-control" name="post_tags" required>
                </div>

                <div class="form-group">
                    <label for="title">Post text</label>
                    <textarea type="text" class="form-control" name="post_content"><?php echo $content_error; ?> </textarea>
                </div>
                
                <div class="form-group"><input type="submit" value="Adauga cartea" name="create_post" class="btn btn-primary"></div>
            </form>

        </div>
    </div>
</div>
</main>
<?php include "inc/footer.php"; ?>