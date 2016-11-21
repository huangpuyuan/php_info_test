<?php
session_start();
date_default_timezone_set('Asia/Shanghai');
header("content-type:text/html;charset=utf-8");
$user = $_SESSION['user_name'];
//echo $user;
//exit;
$submit =(isset($_POST['submit']))?$_POST['submit']:'';
$ac=(isset($_GET['ac']))?$_GET['ac']:'';
include_once('sqlite.php');

if($submit=="提交"){
	$pw_new1=$_POST['pw_new1'];
	$pw_new2=$_POST['pw_new2'];
	if(!empty($pw_new1)){
		if($pw_new1!=$pw_new2){
			echo "===您两次输入的密码不一致，请重新输入!===";
		}else{
			$DB=new SQLite( 'user_info1.db' );
			$updata='update user_info set user_pw="'.$pw_new1.'" where user_name="'.$user.'" ';
			$DB->query($updata);
			echo "<script>alert('您的密码修改成功!')</script>";
			echo '<script>top.location.href="Frameset.html";</script>';
		}		
	}else{
		echo "===新密码不能为空===";
		}
}

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
</head>

<body>
	<form name="form1" method="post" action="">
  <p>用户名：<?php echo $user; ?>
    <label for="user"></label>
    <input type="hidden" name="hiddenField" id="hiddenField">
  </p>
  <p>新密码：
    <label for="pw_new1"></label>
    <input type="password" name="pw_new1" id="pw_new1">
  </p>
  <p>密码确认：
    <label for="pw_new2"></label>
    <input type="password" name="pw_new2" id="pw_new2">
  </p>
  <p>
    <input type="submit" name="submit" id="submit" value="提交">
    <input type="reset" name="reset" id="reset" value="重置">
  </p>
</form>
</body>
</html>