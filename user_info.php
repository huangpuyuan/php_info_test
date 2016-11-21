<?php
header("content-type:text/html; charset=utf-8");
session_start();
$use=$_POST['use'];
$pwd=md5($_POST['pwd']);
require_once'sqlite.php';
if(strtolower($_REQUEST['authcode'])==$_SESSION['authcode']){
	$DB=new SQLite( 'user_info1.db' );
	$sql="select * from user_info where user_name='{$use}' and user_pw='{$pwd}'";
	echo $sql;
	$data = $DB->getlist($sql);
	if( count($data)>0 ){
		$_SESSION['user_name']=$use;
		$_SESSION['user_level']=$data[0]['user_level'];
		header("location:Frameset.html");
	}else{
		header("location:login.php?ac=error");
	}
  }else{
header("location:login.php?ac=error1");
}
