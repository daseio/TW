<?php include 'inc/header.php' ?>
    <main id="contact">
        <div class="contact-wrapper">
			<?php
			$query = "SELECT p.nr_pagini,u.username from pagini_citite p, users u  WHERE u.user_id=p.id_user order by p.nr_pagini desc";

                        $search_query = mysqli_query($connection, $query);

                        confirm($search_query);

                        $count = mysqli_num_rows($search_query);
						
						echo '<font size="25"><h1><div style="color:#FF1493	">Clasament</div></h1></font>';
                         while($row = mysqli_fetch_array($search_query)){
                            $nume = $row['username'];
							$nr_pg =$row['nr_pagini'];
								
							 echo '<div style="color:#4B0082"><h2>'.$nume.' a citit '.$nr_pg.' pagini!</h2></div> ' ;
						 }
			?>
		</div>
    </main>
    <?php include 'inc/footer.php' ?>