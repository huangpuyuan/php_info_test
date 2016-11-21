<?php

session_start();

$lel=$_SESSION['user_level'];

?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站管理导航菜单</title>
</head>

<body>
<p>网站导航菜单
  <br/>
  
  <span class=glow>管理首页</span>
  <span class=glow>|</span></p>
  <?php
  if( $lel==1 ){
  ?>
<p><a href="user_list.php" target="mainFrame">安全管理</a><br>
  <?php
  }
  ?>
  <a href="passwd_alter1.php" target="mainFrame">密码更改 </a></p>
    
</p>
</body>
</html>
