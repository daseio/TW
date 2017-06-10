<?php  include "inc/header.php"; ?>
    

    <?php 
        
        if(isset($_POST['login'])){
         
            $username = $_POST['username'];
            $password = $_POST['password'];
            
           if(!empty($username) && !empty($password)){
                $username = mysqli_real_escape_string($connection, $username); 
                $password = mysqli_real_escape_string($connection, $password);

                $query = "SELECT * FROM users WHERE username = '{$username}'";
                $select_user_query = mysqli_query($connection, $query);

                confirm($select_user_query);

                while($row = mysqli_fetch_array($select_user_query)){
                    $db_user_id         = $row['user_id'];
                    $db_username        = $row['username'];
                    $db_password        = $row['user_password'];
                }

                $password = crypt($password, $db_password);

                if($username !== $db_username && $password !== $db_password || $username == $db_username && $password !== $db_password || $username !== $db_username && $password == $db_password){
                   $message =  "Username or password incorrect!";
                 
                }else if($username == $db_username && $password == $db_password){
                    $_SESSION['username'] = $db_username;
                    header("Location: index.php");
                }
           }else{
               $message = "Va rugam completati toate campurile";
           }
            
        }else{
            $message = "";
        }

    ?>
 
<main>
        <!-- Page Content -->
    <div class="container">
    
<section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <div class="form-wrap">
                <h1>Login</h1>
                    <form role="form" action="login.php" method="post" id="login-form" autocomplete="off">
                       <h5><?php echo $message; ?></h5>
                        <div class="form-group">
                            <label for="username" class="sr-only">username</label>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Enter Your Username">
                        </div>
                        
                         <div class="form-group">
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" name="password" id="key" class="form-control" placeholder="Password">
                        </div>
                
                        <input type="submit" name="login" id="btn-login" class="btn btn-primary btn-lg btn-block" value="login">
                        
                        <div class="form-group">
                            <span>Don't have an account? <a href="registration.php">CLICK HERE</a> to register!</span>
                        </div>
                        
                    </form>
                 
                </div>
            </div> <!-- /.col-xs-12 -->
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</section>

</div>
</main>
<?php include "inc/footer.php";?>
