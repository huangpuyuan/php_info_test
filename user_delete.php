<?php
include_once('sqlite.php'); 
$id=(isset($_GET['id']))?$_GET['id']:'';
$DB=new SQLite( 'user_info1.db' );
$DB->query('delete from user_info where id='.$id);
header("location:user_list.php");
?>