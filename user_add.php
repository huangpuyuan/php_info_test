<?php
$user=(isset($_POST['user_name']))?$_POST['user_name']:'';
$pw=(isset($_POST['user_pw']))?$_POST['user_pw']:'';
$level=(isset($_POST['radio']))?$_POST['radio']:'';
include_once('sqlite.php');
$password=md5($pw);
if($user!="" && $pw!=""){ 
$DB=new SQLite( 'user_info1.db' );
$se="select user_name from user_info where user_name='{$user}' ";
$data = $DB->getlist($se);
	if(count($data)>0){
	echo "用户名已存在，请重新输入";
		}else{
		$add='insert into user_info(user_name,user_pw,user_level) values("'.$user.'","'.$password.'","'.$level.'")';
		//echo $add;
$DB->query($add);

//exit;
header("location:user_list.php");
	}

}else{
	echo "用户名密码不能为空";
	}
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用户添加</title>
</head>

<body>
<form name="form1" method="post" action="user_add.php">
  <p>
    <label for="user_name"></label>
    <input type="text" name="user_name" id="user_name" placeholder="用户名">
  </p>
  <p>
    <label for="user_pw"></label>
    <input type="password" name="user_pw" id="user_pw" placeholder="密码">
  </p>
  <p>
    <input name="radio" type="radio" id="level" value="0" checked="CHECKED">
    普通级别
    <input type="radio" name="radio" id="level" value="1">
    管理员级别
  </p>
  <p>
    <input type="submit" name="sub" id="sub" value="提交">
    <input name="res" type="reset" id="res" value="重置">
  </p>
  <p><a href="user_list.php">返回</a></p>
</form>
</body>
</html>