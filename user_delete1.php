<?php
include_once('sqlite.php'); 

$id=(isset($_GET['id']))?$_GET['id']:'';
$DB=new SQLite( 'user_info1.db' );
$data = $DB->getlist('select user_name from user_info where id='.$id);

//print_r( $data );

$submit=(isset($_POST['sub1']))?$_POST['sub1']:'';
$re=(isset($_POST['re']))?$_POST['re']:'';

if($submit=="是"){
	if( $id!='' ){
		$DB=new SQLite( 'user_info1.db' );
		$DB->query('delete from user_info where id='.$id);
		header("location:user_list.php");
	}
}
if($re=="否"){
	header("location:user_list.php");
}
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用户删除的笨方法</title>
</head>

<body>
<script></script>
<br />
<form name="form1" method="post" action="?id=<?php echo $id; ?>">
  <p>当前删除用户为：<?php echo $data[0]['user_name'] ?></p>
  <p>是否确认删除该用户  </p>
  <p>
    <input type="submit" name="sub1" id="sub1" value="是">
    <input name="re" type="submit" id="re" value="否">
  </p>
  <p><a href="user_list.php">返回</a></p>
</form>
</body>
</html>

