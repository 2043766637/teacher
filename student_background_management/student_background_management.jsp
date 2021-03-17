<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生后台</title>

<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="font/iconfont.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>

<script>
	$(function() {

		$("#click").click(function() {
			$("#no_click_background").hide();
			$("#add_all_info").hide();
		});

		$("#click_info_form").click(function() {
			$("#add_info_form").show();
			$("#search_all_info").hide();
		});

		$("#exit").click(function() {
			if (confirm("确定退出？")) {
	        location.href = "1.jsp";
			}
		});
		$("#click_search").click(function(){
			$("#search_all_info").show();
			$("#add_info_form").hide();
		});
	 
	});
</script>
<script>
	
</script>
</head>

<style>
#right {
	background: #fff;
	height: 100%;
	flex: 1;
}

#add_info_form {
	z-index: 20;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 20px 30px;
	display: none;
}

#search_all_info {
	z-index: 20;
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 700px;
	display: none;
}

#search_all_info_head {
	width: 100%;
	height: 50px;
	border-radius: 15px 15px 0 0;
	background: #222;
	text-align: center;
	line-height: 50px;
	font-size: 40px;
	letter-spacing: 40px;
	color: white;
}

#search_all_info_table tr:hover {
	box-shadow: 0 0 20px #222;
}

input {
	width: 80%;
	font-size: 30px;
	border: 0;
	margin-top: 30px;
}

input:hover {
	/* box-shadow: 0 0 20px green; */
	box-shadow: 0 0 20px #222;
}

textarea {
	font-size: 20px;
	margin-top: 10px;
}
</style>
<body id="click" style="display: flex;">
	<div class="nav">
		<div class="nav-top">
			<div id="mini"
				style="border-bottom: 1px solid rgba(255, 255, 255, 0.1)">
				<img src="images/mini.png">
			</div>
		</div>
		<ul>
			<li class="nav-item"><a href="javascript:;" id="click_info_form"><i
					class="my-icon nav-icon icon_3"></i><span>完善信息</span></a>
				 </li>
				 <li class="nav-item"><a href="javascript:;" id="click_search"><i
					class="my-icon nav-icon icon_3"></i><span>个人信息</span></a>
				 </li>

			<li class="nav-item"><a href="javascript:;" id="exit"><i
					class="my-icon nav-icon icon_2"></i><span>退出登录</span></a></li>
			<li class="nav-item"><a href="/teacher/index.jsp"> <i
					class="my-icon nav-icon icon_2"></i><span>返回首页</span>
			</a></li>
		</ul>
	</div>
	<div id="right">



		<!-- 完善信息的表单的div -->
		<div id="add_info_form">
			<form action="/teacher/AddStudentInfoServlet" method="post">
				<table style="width: 500px; font-size: 30px; text-align: center;">
					<tr>
						<td>请完善以下信息</td>
					</tr>
					<tr>
						<td><input type="text" name="student_name"
							required="required" placeholder="姓名"></td>
					</tr>
					<tr>
						<td><input type="text" name="teacher_number"
							required="required" placeholder="所属导师编号"></td>
					</tr>
					<tr>
						<td style="height: 150px; background:"><textarea cols="35"
								rows="5" required="required" name="student_info"
								placeholder="个人简介"></textarea></td>
					</tr>
					<tr>
						<td><input type="submit" value="确认添加"
							style="width: 40%; margin-top: 0px; background: #3EC475"></td>
					</tr>
				</table>
			</form>

		</div>


	</div>

	<!-- 查询所有信息的div -->
	<div id="search_all_info">
		<div id="search_all_info_head">所有信息</div>
		<table id="search_all_info_table"
			style="width: 100%; font-size: 30px; text-align: center;">
			<tr>
				<td style="width: 250px;">学生姓名</td>
				<td>${existStudent.student_name}</td>
			</tr>
			<tr>
				<td>学生学号</td>
				<td>${existStudent.student_number}</td>
			</tr>
			<tr>
				<td>所属导师编号</td>
				<td>${existStudent.teacher_number}</td>
			</tr>
			<div>
				<tr>
					<td colspan="2" style="background:">个人简介<br> <textarea
							style="border: solid;" cols="60" rows="5" disabled="disabled">${existStudent.student_info}</textarea></td>
				</tr>

			</div>
		</table>
	</div>

	<%
		String msg = (String) session.getAttribute("msg");
	if ("完善信息成功".equals(msg)) {
	%>
	<script>
			alert("<%=msg%>
		");
	</script>
	<%
		session.removeAttribute("msg");
	}
	%>

</body>

</html>


