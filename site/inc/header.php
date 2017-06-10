<?php include "inc/db.php"; ?>
    <?php include "inc/functions.php"; ?>
        <?php session_start(); ?>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <title>Proiect tw</title>
                <!-- css -->
                <link rel="stylesheet" href="css/style.css"> </head>

            <body>
                <header>
                    <nav>
                        <ul>
                            <li class="brand"><a href="index.php">Stories on the web</a></li>
                            <div class="navbar-right">
                                <li><a href="index.php">Home</a></li>
                                <li><a href="carti.php">Carti</a></li>
                                <li><a href="contact.php">Contact</a></li>
                                <li>
                                    <?php if(isset($_SESSION['username'])){ ?> <a href="logout.php">LOGOUT</a>
                                        <?php }else{ ?> <a href="login.php">LOGIN</a>
                                            <?php } ?>
                                </li>
                            </div>
                        </ul>
                    </nav>
                    <div class="header-text">
                        <h1>
              Stories On The Web
          </h1>
                        <p> Acest site a fost creeat pentru a oferi utilizatorilor pasionati de citit sau juniori incepatori o modalitate mai usoara de a citi noi carti si povestioare educative! </p>
                        <form action="search.php" method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" name="search"> 
                                <button type="submit" name="find">Trimite</button>
                            </div>
                        </form>
                        <?php
                        if(isset($_SESSION['username'])) { ?>
                            <div class="col-xs-6 col-xs-offset-3 text-center"> <a href="add-post.php" class="btn btn-success btn-cstm">adauga o carte</a> </div>
                            <?php } ?>
                    </div>
                </header>