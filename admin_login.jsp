<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员登录</title>
<script type="text/javascript">
	 
 
</script>
</head>

<style>
body {
	background: white;
}

.admin_login_box {
	width: 400px;
	height: 400px;
	background: white;
	border-radius: 20px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	text-align: center;
}

input {
	width: 80%;
	font-size: 30px;
	margin-top: 30px;
}
 
</style>

<body>
	<div class="admin_login_box">
		<div
			style="width: 100%; height: 80px; text-align: center; line-height: 80px; font-size: 35px; background: #222; color: white; border-radius: 20px 20px 0 0">管理员登录</div>
		<form action="/teacher/AdminLoginServlet" method="post">
			<input  type="text" name="admin_name"
				required="required" placeholder="root"
				  /> <input
				id="password" type="password" name="password" required="required"
				placeholder="123"> <br>
				 
				<input type="submit" value="确定"
				style="width: 100px; margin-right:120px;margin-top: 50px;  "><input   type="button" value="返回" style="width: 100px;" onclick="window.location.href='/teacher/index.jsp'">
				 
		</form>
	</div>
</body>
</html>