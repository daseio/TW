
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
	for($i=$page*10; $i<$page*10+10;$i++){
		if($i<$number_of_pages){
			echo $arr[$i].'<br>' ;
		}
	}
		



	for ($page=0;$page<$number_of_pages/10;$page++) {
		echo '<a href="post.php?p_id='.$url.'&page=' . $page . '">' . $page . '</a> ';
	}
}
?>
