
<?php
function paginare($carte,$url){
	if (!isset($_GET['page'])) {
		$page = 1;
	}
 	else {
		$page = $_GET['page'];
	}
    $arr = str_split($carte, 100);
	$number_of_pages = count($arr);
	for($i=$page*20; $i<$page*20+20;$i++){
		if($i<$number_of_pages){
			echo '<font size="6">'.$arr[$i].'</font><br>' ;
		}
	}
		



	for ($page=0;$page<$number_of_pages/20;$page++) {
		echo '<a href="post.php?p_id='.$url.'&page=' . $page . '">' . $page . '</a> ';
	}
	
	
}

?>
