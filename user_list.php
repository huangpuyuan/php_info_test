<?php

session_start();
$lel=$_SESSION['user_level'];
if( $lel!=1 ){
	header("location:Frameset.html");
}

include_once('sqlite.php');
$DB=new SQLite( 'user_info1.db' );
$data = $DB->getlist('select * from user_info order by id ');
//print_r($data);

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用户列表</title>
</head>

<body>
<script>
function firm()
{
         //利用对话框返回的值 （true 或者 false）
     if(confirm("你确信要删除这个用户么？"))
     {
             //如果是true ，那么就把页面转向thcjp.cnblogs.com
         //location.href="http://blog.csdn.net/fengyifei11228/";
		return true;
      }
    else
     {
        //否则说明下了，赫赫
       //alert("你按了取消，那就是返回false");
	  return false;
     }
}
</script>

<p>所有用户列表|<a href="user_add.php">添加</a></p>
<table width="60%" border="1" cellpadding="0" cellspacing="0"  align="center">
  <tr bgcolor="#ABCDEF">
    <td width="11%">序号</td>
    <td width="19%">用户名</td>
    <td width="19%">密码</td>
    <td width="21%">用户级别</td>
    <td width="15%">&nbsp;</td>
    <td width="15%">&nbsp;</td>
  </tr>
  <?php
  for($I=0;$I<count($data);$I++){
		echo '<tr><td>'.($I+1).'</td><td>'.$data[$I]['user_name'].'</td><td>'.$data[$I]['user_pw'].'</td><td>'.$data[$I]['user_level'].'</td><td><a 	href="passwd_alter.php?id='.$data[$I]['id'].'&user='.$data[$I]['user_name'].'">重置密码</a></td><td><a onclick="return firm()" href="user_delete.php?id='.$data[$I]['id'].'">删除</a></td></tr>';
	}
  	
  ?>
  
 
</table>
</body>
</html>
