<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>导师后台</title>
<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="font/iconfont.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>

<script>
	$(function() {

	 /* 触发完善导师自己信息的表单的单击事件*/
		$("#click_info_form").click(function() {
			$("#add_info_form").show();
			$("#search_all_info").hide();
			$("#find_all_student").hide();
		});
		/* 触发退出单击事件 */
		$("#exit").click(function() {
			if (confirm("确定退出？")) {
	        location.href = "1.jsp";
			}
		});
		/* 触发提交查询名下所有学生的单击事件 */
		$("#click_find_all_student").click(function() {
	        location.href = "/teacher/FindAllStudentServlet";
		});
		/* 触发查询导师自己的信息的单击事件 */
		$("#click_search").click(function(){
			$("#search_all_info").show();
			$("#add_info_form").hide();
			$("#find_all_student").hide();
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

#find_all_student {
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 10px 0;
	width: 900px;
	display: none;
}

#find_all_student_head {
	width: 100%;
	height: 70px;
	border-radius: 15px 15px 0 0;
	background: #222;
	text-align: center;
	line-height: 70px;
	font-size: 40px;
	letter-spacing: 20px;
	color: white;
}

input {
	width: 80%;
	font-size: 30px;
	border: 0;
	margin-top: 30px;
}

input:hover {
	box-shadow: 0 0 20px #222;
}

textarea {
	font-size: 20px;
	margin-top: 10px;
}

#search_all_info_table #no_hover:hover {
	box-shadow: 0 0 0 #fff;
}

#search_all_info_table #del:hover {
	box-shadow: 0 0 0 #fff;
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
					class="my-icon nav-icon icon_3"></i><span>完善信息</span></a></li>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_3"></i><span>查询信息</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="javascript:;" id="click_search"><span>导师信息</span></a></li>
					<li><a href="javascript:;" id="click_find_all_student"><span>学生信息</span></a></li>
				</ul></li>
			<li class="nav-item"><a href="javascript:;" id="exit"><i
					class="my-icon nav-icon icon_2"></i><span>退出登录</span></a></li>
			<li class="nav-item"><a href="/teacher/index.jsp"> <i
					class="my-icon nav-icon icon_2"></i><span>返回首页</span>
			</a></li>
		</ul>
	</div>


	<div id="right">
		<!-- 完善导师自己的信息的表单的div -->
		<div id="add_info_form">
			<form action="/teacher/AddTeacherInfoServlet" method="post">
				<table style="width: 500px; font-size: 30px; text-align: center;">
					<tr>
						<td>请完善以下信息</td>
					</tr>
					<tr>
						<td><input type="text" name="teacher_name"
							required="required" placeholder="导师姓名"></td>
					</tr>
					<tr>
						<td><input type="text" name="teacher_title"
							placeholder="导师职称" required="required"></td>
					</tr>
					<tr>
						<td style="height: 150px; background:"><textarea cols="35"
								rows="5" required="required" name="teacher_info"
								placeholder="导师简介"></textarea></td>
					</tr>
					<tr>
						<td><input type="submit" value="确认添加"
							style="width: 40%; margin-top: 0px; background: #3EC475"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<!-- 查询导师自己的所有信息的 -->
	<div id="search_all_info">
		<div id="search_all_info_head">所有信息</div>
		<table id="search_all_info_table"
			style="width: 100%; font-size: 30px; text-align: center;">
			<tr>
				<td style="width: 250px;">导师姓名</td>
				<td>${existTeacher.teacher_name}</td>
			</tr>
			<tr>
				<td>导师编号</td>
				<td>${existTeacher.teacher_number}</td>
			</tr>
			<tr>
				<td>导师职称</td>
				<td>${existTeacher.teacher_title}</td>
			</tr>
			<div>
				<tr>
					<td colspan="2" style="background:">个人简介<br> <textarea
							style="border: solid;" cols="60" rows="5" disabled="disabled">${existTeacher.teacher_info}</textarea></td>
				</tr>

			</div>
		</table>
	</div>

	<!-- 判断是否成功完善导师自己的信息，true就弹框 -->
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

	<!-- 导师查询自己名下所有的学生信息 -->
	<div id="find_all_student">
		<div id="find_all_student_head">名下所有学生信息</div>
		<form action="/teacher/TeacherDelStudentServlet" method="post">
			<table id="search_all_info_table"
				style="width: 100%; font-size: 30px; text-align: center;">
				<tr id="no_hover">
					<td style="width: 200px;">学号</td>
					<td style="width: 200px;">姓名</td>
					<td style="width: 400px;">学生简介</td>
					<td>删除</td>
				</tr>

				<c:forEach var="student" items="${list}">
					<tr>
						<td>${student.student_number}</td>
						<td>${student.student_name }</td>
						<td style="font-size: 20px;">${student.student_info }</td>
						<td><input style="width: 20px; height: 20px;" type="checkbox"
							name="check" value="${student.student_number }"></td>
					</tr>
				</c:forEach>

				<tr id="del">
					<td colspan="4" style="margin-bottom: 0;"><input type="submit"
						value="确认删除"></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 判断是否单击了查询所有学生的按钮，true就show出来 -->
	<%
		String msg1 = (String) session.getAttribute("msg1");
	if ("findallstudentservlet".equals(msg1)) {
	%>
	<script>
		$("#find_all_student").show();
	</script>
	<%
		session.removeAttribute("msg1");
	}
	%>



</body>

</html>


