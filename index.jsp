<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>电子导师平台</title>
<script src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="layui/css/layui.css">

<script src="layui/layui.js"></script>

<script>
	$(function() {

		$("#student_login").click(function() {
			$("#login_box").show();
			$("#background_cover").show();

		});
		$("#close").click(function() {
			$("#login_box").fadeOut("slow", function() {
				$("#login_box_head").html("学生登录");
			});
			$("#background_cover").hide();

		});
		$("input").focus(function() {
			$(this).addClass("focus");
		});
		$("input").blur(function() {
			$(this).removeClass("focus");
		});

		$("input").focus(function() {
			$("#login_box_head").html("学生登录");
		});
	 

	});
</script>

</head>

<style>
body {
	background: #fff;
	background: url("image/3.jpg");
}

td {
	height: 80px;
}

input {
	width: 300px;
	border: 0.5px solid;
	font-size: 35px;
	font-family: cursive;
}

input:hover {
	box-shadow: 0 0 20px #222;
}

#login_box {
	z-index: 9;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000 border-radius: 15px;
	width: 450px;
	background-color: #ffffff;
	border-radius: 15px;
	display: none;
}

#background_cover {
	z-index: 2;
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0px;
	top: 0px;
	opacity: 0.8;
	display: none;
	background-color: #222;
	display: none;
	top: 0px;
}

#login_box_head {
	width: 100%;
	text-align: center;
	font-size: 35px;
	background: #222;
	font-family: cursive;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	width: 100%;
}
</style>


<body>
	<ul class="layui-nav" lay-filter="">
		<div style="float: right">
			<li class="layui-nav-item"><a href="#"  >后台管理 </a><dl class="layui-nav-child">
					<dd>
						<a href="/teacher/student_background_management/student_background_management.jsp" >学生后台</a>
					</dd>
					<dd>
						<a  href="/teacher/teacher_login_register/teacher_background_management.jsp">导师后台</a>
					</dd>
					<dd>
						<a  href="/teacher/admin_background_management/admin_background_management.jsp">管理员后台</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item"><a href="#">个人中心 </a></li>
			<li class="layui-nav-item"><a href=""><img
					src="//t.cn/RCzsdCq" class="layui-nav-img">登录</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="#" id="student_login">学生入口</a>
					</dd>
					<dd>
						<a href="teacher_login_register/teacher_login_register.jsp">导师入口</a>
					</dd>
					<dd>
						<a href="admin_login.jsp">管理员入口</a>
					</dd>
				</dl></li>
		</div>

	</ul>


	<div id="background_cover"></div>
	<%
		String msg = "";
	if (request.getAttribute("msg") != null) {
		msg = (String) request.getAttribute("msg");
	%>
	<script type="text/javascript">
		$(function() {
			$("#student_login").click();
			$("#xsdl").empty();

		});
	</script>
	<%
		}
	%>

	<form action="/teacher/LoginServlet" method="post">
		<div id="login_box">
			<div id="login_box_head" style="color: white;">
				<a id="xsdl" href="#" style="color: white;">学生登录</a><a
					style="color: red"> <%=msg%></a>
			</div>
			<table style="text-align: center; width: 100%; margin-bottom: 30px;">
				<tr>
					<td colspan="2" style=""><input type="text"
						name="student_number" required="required" placeholder="学号"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="password" name="password"
						required="required" placeholder="密码"></td>
				</tr>
				<tr>
					<td><input type="submit" value="登 录"
						style="width: 100px; margin-left: 18px;" /></td>
					<td><input type="button" value="取 消" id="close"
						style="width: 100px; margin-right: 17px;" /></td>
				</tr>

				<tr>
					<td style="height: 10px;"><a href="register.jsp">没有账号？去注册</a></td>
					<td style="height: 10px;"><a href="#">忘记密码？去找回</a></td>
				</tr>
			</table>
		</div>
	</form>

	<script>
		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function() {
			var element = layui.element;

			//…
		});
	</script>
</body>
</html>
