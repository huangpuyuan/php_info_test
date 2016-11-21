  <?php
$sub =(isset($_POST['sub']))?$_POST['sub']:'';
$id =(isset($_GET['id']))?$_GET['id']:'';
$user =(isset($_GET['user']))?$_GET['user']:'';
if($sub=='确认'){  
	$pw1=$_POST['pw1'];
	$pw2=$_POST['pw2'];
	include_once('sqlite.php');
	$DB=new SQLite( 'user_info1.db' );
	//echo '||'.$id.'||';
	//$data = $DB->getlist('select * from user_info where user_name="'.$user.'"');
	
	//if( count($data)>0 ){}
	
	if(	$pw1!=''){
		if($pw1!=$pw2){
			echo "===您两次输入的密码不一致，请重新输入!===";
		}else{
			$DB=new SQLite( 'user_info1.db' );
			$password=md5($pw1);
			$updata='update user_info set user_pw="'.$password.'" where user_name="'.$user.'" ';
			//print_r($updata);
			$DB->query($updata);
			echo "<script>alert('您的密码修改成功!')</script>";
			echo '<script>location.href="user_list.php";</script>';
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
<title>密码更改</title>
</head>


<body>
<p>

</p>
<form name="form1" method="post" action="?id=<?php echo $id; ?>&user=<?php echo $user;?>">
  <p>
    <label for="pw1"></label>
    <input type="password" name="pw1" id="pw1" placeholder="新密码">
  </p>
  <p>
    <label for="pw2"></label>
    <input type="password" name="pw2" id="pw2" placeholder="密码确认">
  </p>
  <p>
    <input type="submit" name="sub" id="sub" value="确认">
    <input type="reset" name="res" id="res" value="重置">
  </p>
  <p><a href="user_list.php">返回</a></p>
</form>
</body>
</html>
