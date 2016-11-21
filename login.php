<?php
$ac=(isset($_GET['ac']))?$_GET['ac']:'';
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>

<body>


<br>
<form name="form1" method="post" action="user_info.php">
  <p>电信APP视频专区后台管理系统</p>
  <p>用户名：
    <input type="text" name="use" id="use">
  *</p>
  <p>
    密码：
      <input name="pwd" type="password" id="pwd" value="">
  *</p>
  <p>验证码图片：
<img id="captcha_img" border="1" src="./captcha.php?r=<?php echo rand();?>" height="30" width="100">
<a href="javascript:void(0)" onClick="document.getElementById('captcha_img').src='./captcha.php?r='+Math.random()">换一个？</a>
</p> 
  <p>
    请输入验证码：<input type="text" name="authcode" value="" />
  *</p>
  <?php
if($ac=='error'){echo '<p style="font-family:times;color:red">用户名或者密码错误</p>'; }
if($ac=='error1'){echo '<p style="font-family:times;color:red">验证码输入错误</p>'; }
?> 
  <p>
    <input type="submit" name="sub" id="sub" value="登录">
    <input type="reset" name="re" id="re" value="取消">
  </p>
</form>
</body>
</html>