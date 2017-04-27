<?php
header("content-type:text/json; charset=utf-8");
$username = isset($_POST['username'])?$_POST['username']:'';
$password = isset($_POST['password'])?$_POST['password']:'';
$PIN = isset($_POST['PIN'])?$_POST['PIN']:'';

$data = [
	'username'=> $username,
	'password'=> $password,
	'PIN'=>$PIN
];


function request( $errortype = 1, $code = 400, $message = 'erorr'){
	$request = [
		'code'=> $code,
		'message'=> $message,
		'errortype'=>$errortype
	];

	return $request;
}

function dataHandler($data){
	// $res = [];

	if (!trim($data['username'])) {
		return request();
	}

	if (!trim($data['password'])) {
		return request(2);
	}

	return request(0,200,'success');
}



echo json_encode(dataHandler($data));

//var_dump($_POST);