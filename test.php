<?php
header("content-type:text/json; charset=utf-8");
require('sqlite.php');
session_start();

function dbHandler($sql){
	$DB = new SQLite( 'user_info1.db' );
	return  $DB->getlist($sql);	
}

function response( $errortype = 1,$message = '账号为空', $code = 400 ){
	$response = [
		'code'=> $code,
		'message'=> $message,
		'errortype'=>$errortype
	];

	return $response;
}

function dataHandler($data){


	if(!trim($data['PIN'])){
		return response(3,'验证码为空',400);
	}elseif (strtolower($_REQUEST['PIN'])!== $_SESSION['authcode']) {
		return response(4,'验证码错误',400);
	}	

	if (!trim($data['username'])) {
		return response();
	}

	if (!trim($data['password'])) {
		return response(2,"密码为空");
	}

	$username = $data['username'];
	$password = md5($data['password']);
	
	
	
	$sql = "SELECT * FROM user_info WHERE user_name = '{$username}' AND user_pw ='{$password}'"; 
	//echo $sql;exit;

	$res = dbHandler($sql);
	if(count($res) > 0 ){
		$_SESSION['user_name']=$username;
		$_SESSION['user_level']=$res[0]['user_level'];
		return response(0,'登录成功',200);		
	}else{
		return response(101,'登录失败,账号密码错误',401);
	};	



}


if(count($_POST)==0){
	echo json_encode(response(999,'服务器未知错误',500));
	exit;
}

if(!isset($_SESSION['authcode'])){
	echo json_encode(response(998,'验证码读取失败',500));
	exit;
}

$username = isset($_POST['username'])?$_POST['username']:'';
$password = isset($_POST['password'])?$_POST['password']:'';
$PIN = isset($_POST['PIN'])?$_POST['PIN']:'';

$data = [
	'username'=> $username,
	'password'=> $password,
	'PIN'=>$PIN
];


echo json_encode(dataHandler($data));