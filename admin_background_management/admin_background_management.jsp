<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员后台</title>

<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="font/iconfont.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<script>
	$(function() {
		$("#exit").click(function() {
			if (confirm("确定退出？")) {
				location.href = "1.jsp";
			}
		});
		$("#button_add_student").click(function() {
			$("#add_student").show();
			$("#add_teacher").hide();
			$("#admin_query_all_student").hide();
			$("#admin_query_all_teacher").hide();
			$("#admin_query_student").hide();
			$("#admin_query_teacher").hide();
			$("#admin_update_student").hide();
			$("#admin_update_teacher").hide();
			$("#admin_del_a_student").hide();
			$("#admin_del_a_teacher").hide();
		});
		$("#button_add_teacher").click(function() {

			$("#add_teacher").show();
			$("#add_student").hide();
			$("#admin_query_all_student").hide();
			$("#admin_query_all_teacher").hide();
			$("#admin_query_student").hide();
			$("#admin_query_teacher").hide();
			$("#admin_update_student").hide();
			$("#admin_update_teacher").hide();
			$("#admin_del_a_student").hide();
			$("#admin_del_a_teacher").hide();
		});
		$("#button_admin_query_student").click(function() {
			$("#admin_query_student").show();
			$("#add_student").hide();
			$("#add_teacher").hide();
			$("#admin_query_all_student").hide();
			$("#admin_query_all_teacher").hide();
			$("#admin_query_teacher").hide();
			$(".tr1").empty();
			$("#admin_update_student").hide();
			$("#admin_update_teacher").hide();
			$("#admin_del_a_student").hide();
			$("#admin_del_a_teacher").hide();
		});
		$("#button_admin_query_teacher").click(function() {
			$("#admin_query_teacher").show();
			$("#add_student").hide();
			$("#add_teacher").hide();
			$("#admin_query_all_student").hide();
			$("#admin_query_all_teacher").hide();
			$("#admin_query_student").hide();
			$(".tr2").empty();
			$("#admin_update_student").hide();
			$("#admin_update_teacher").hide();
			$("#admin_del_a_student").hide();
			$("#admin_del_a_teacher").hide();

		});
		$("#button_del_a_student").click(function() {
			$("#admin_del_a_student").show();
			$("#add_student").hide();
			$("#add_teacher").hide();
			$("#admin_query_all_student").hide();
			$("#admin_query_all_teacher").hide();
			$("#admin_query_student").hide();
			$("#admin_query_teacher").hide();
			$("#admin_update_student").hide();
			$("#admin_update_teacher").hide();
			$("#admin_del_a_teacher").hide();
		});
		$("#button_del_a_teacher").click(function() {
			$("#admin_del_a_teacher").show();
			$("#add_student").hide();
			$("#add_teacher").hide();
			$("#admin_query_all_student").hide();
			$("#admin_query_all_teacher").hide();
			$("#admin_query_student").hide();
			$("#admin_query_teacher").hide();
			$("#admin_update_student").hide();
			$("#admin_update_teacher").hide();
			$("#admin_del_a_student").hide();
		});
		$("#button_admin_query_all_student").click(function() {
			location.href = "/teacher/AdminQueryAllStudentServlet";
		});
		$("#button_admin_query_all_teacher").click(function() {
			location.href = "/teacher/AdminQueryAllTeacherServlet";
		});
		$("#to_update_student").click(function() {
			if ($("#query_student_res").length == 0) {
				alert("输入需要修改的学生的学号");
			} else {
				$("#admin_update_student").show();
				$("#admin_query_student").hide();
			}
		});
		$("#to_update_teacher").click(function() {
			if ($("#query_teacher_res").length == 0) {
				alert("输入需要修改的导师的编号");
			} else {
				$("#admin_update_teacher").show();
				$("#admin_query_teacher").hide();
			}
		});

	});
</script>
</head>
<style>
#add_student {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#add_student_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}

#add_teacher {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#add_teacher_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}

#admin_query_all_student {
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

#admin_query_all_student_head {
	width: 100%;
	height: 70px;
	border-radius: 15px 15px 0 0;
	background: #222;
	text-align: center;
	line-height: 70px;
	font-size: 40px;
	letter-spacing: 20px;
	color: white;
	font-family: cursive;
}

#admin_query_all_teacher {
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

#admin_query_all_teacher_head {
	width: 100%;
	height: 70px;
	border-radius: 15px 15px 0 0;
	background: #222;
	text-align: center;
	line-height: 70px;
	font-size: 40px;
	letter-spacing: 20px;
	color: white;
	font-family: cursive;
}

#admin_query_student {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#admin_query_student_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}

#admin_query_teacher {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#admin_query_teacher_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}

#admin_update_student {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#admin_update_student_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}

#admin_update_teacher {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#admin_update_teacher_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}

#admin_del_a_student {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#admin_del_a_student_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}
#admin_del_a_teacher {
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-shadow: 0 0 30px #000;
	border-radius: 15px;
	padding: 0 0 30px 0;
	width: 600px;
	display: none;
}

#admin_del_a_teacher_head {
	text-align: center;
	background: #222;
	color: #fff;
	font-size: 40px;
	border-radius: 15px 15px 0 0;
	height: 80px;
	line-height: 80px;
	letter-spacing: 30px;
	font-family: cursive;
}
table {
	background:;
	width: 100%;
	font-size: 30px;
	text-align: center;
}

input {
	width: 70%;
	font-size: 30px;
	border: 0;
	margin-top: 30px;
}

input:hover {
	box-shadow: 0 0 20px #222;
}

textarea:hover {
	box-shadow: 0 0 20px #222;
}

#admin_query_all_student tr:hover {
	box-shadow: 0 0 20px #222;
}

#admin_query_all_student #no_hover1:hover {
	box-shadow: 0 0 0 #fff;
}

#admin_query_all_student #del1:hover {
	box-shadow: 0 0 0 #fff;
}

#admin_query_all_teacher tr:hover {
	box-shadow: 0 0 20px #222;
}

#admin_query_all_teacher #no_hover2:hover {
	box-shadow: 0 0 0 #fff;
}

#admin_query_all_teacher #del2:hover {
	box-shadow: 0 0 0 #fff;
}

#admin_query_student tr.tr1:hover {
	box-shadow: 0 0 20px #222;
}

#admin_query_teacher tr.tr1:hover {
	box-shadow: 0 0 20px #222;
}
</style>
<body style="background: white;">

	<div class="nav">
		<div class="nav-top">
			<div id="mini"
				style="border-bottom: 1px solid rgba(255, 255, 255, .1)">
				<img src="images/mini.png">
			</div>
		</div>
		<ul>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_1"></i><span>添加用户</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="javascript:;" id="button_add_student"><span>添加学生</span></a></li>
					<li><a href="javascript:;" id="button_add_teacher"><span>添加导师</span></a></li>

				</ul></li>



			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_1"></i><span>查询修改</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="javascript:;" id="button_admin_query_all_student"><span>查询所有学生</span></a></li>
					<li><a href="javascript:;" id="button_admin_query_all_teacher"><span>查询所有导师</span></a></li>
					<li><a href="javascript:;" id="button_admin_query_student"><span>查询修改学生</span></a></li>
					<li><a href="javascript:;" id="button_admin_query_teacher"><span>查询修改导师</span></a></li>
				</ul></li>


			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_1"></i><span>删除用户</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="javascript:;" id="button_del_a_student"><span>删除学生</span></a></li>
					<li><a href="javascript:;" id="button_del_a_teacher"><span>删除导师</span></a></li>

				</ul></li>

			<li class="nav-item"><a href="#" id="exit"><i
					class="my-icon nav-icon icon_3"></i><span>退出登录</span> </i></a></li>
			<li class="nav-item"><a href="/teacher/index.jsp"><i
					class="my-icon nav-icon icon_3"></i><span>返回首页</span> </i></a></li>
		</ul>
	</div>
	<div id="add_student">
		<div id="add_student_head">添加学生</div>
		<form action="/teacher/AdminAddStudentServlet" method="post">
			<table>
				<tr>
					<td><input type="text" name="student_name" placeholder="学生姓名"
						required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="student_number"
						placeholder="学生编号" required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="password" placeholder="学生密码"
						required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="teacher_number"
						placeholder="所属导师编号" required="required"></td>
				</tr>
				<tr>
					<td><textarea required="required" placeholder="学生简介"
							name="student_info" cols="38" rows="5"
							style="margin-top: 20px; font-size: 20px;"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="确认添加"
						style="background: #3EC475"></td>
				</tr>
			</table>
		</form>
	</div>
	<%
		String msg = (String) session.getAttribute("msg");
	if ("AdminAddStudentServlet".equals(msg)) {
	%>
	<script>
		$("#add_student").show();
	</script>
	<%
		session.removeAttribute("msg");
	}
	msg = null;
	%>




	<div id="add_teacher">
		<div id="add_teacher_head">添加导师</div>
		<form action="/teacher/AdminAddTeacherServlet" method="post">
			<table>
				<tr>
					<td><input type="text" name="teacher_name" placeholder="导师姓名"
						required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="teacher_number"
						placeholder="导师编号" required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="password" placeholder="导师密码"
						required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="teacher_title" placeholder="导师职称"
						required="required"></td>
				</tr>
				<tr>
					<td><textarea required="required" placeholder="导师简介"
							name="teacher_info" cols="38" rows="5"
							style="margin-top: 20px; font-size: 20px;"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="确认添加"
						style="background: #3EC475"></td>
				</tr>
			</table>
		</form>
	</div>
	<%
		String msg1 = (String) session.getAttribute("msg1");
	if ("AdminAddTeacherServlet".equals(msg1)) {
	%>
	<script>
		$("#add_teacher").show();
	</script>
	<%
		session.removeAttribute("msg1");
	}
	msg1 = null;
	%>

	<div id="admin_query_all_student">
		<div id="admin_query_all_student_head">所有学生</div>
		<form action="/teacher/AdminDelStudentServlet" method="post">
			<table style="width: 100%; font-size: 20px; text-align: center;">
				<tr id="no_hover1">
					<th style="width: 100px;">学号</th>
					<th style="width: 100px;">姓名</th>
					<th style="width: 100px;">密码</th>
					<th style="width: 100px;">所属导师</th>
					<th style="width: 400px;">学生简介</th>
					<th>删除</th>
				</tr>

				<c:forEach var="student" items="${adminQueryAllStudentList}">
					<tr>
						<td>${student.student_number}</td>
						<td>${student.student_name }</td>
						<td>${student.password}</td>
						<td>${student.teacher_number}</td>
						<td style="font-size: 20px;">${student.student_info }</td>
						<td><input style="width: 20px; height: 20px;" type="checkbox"
							name="check" value="${student.student_number}"></td>
					</tr>
				</c:forEach>

				<tr id="del1">
					<td colspan="6" style="margin-bottom: 0;"><input type="submit"
						value="确认删除"></td>
				</tr>
			</table>
		</form>
	</div>

	<!-- 判断是否单击了查询所有学生的按钮，true就show出来 -->
	<%
		String msg2 = (String) session.getAttribute("msg2");
	if ("AdminQueryAllStudentServlet".equals(msg2)) {
	%>
	<script>
		$("#admin_query_all_student").show();
	</script>
	<%
		session.removeAttribute("msg2");
	}
	msg2 = null;
	%>

	<div id="admin_query_all_teacher">
		<div id="admin_query_all_teacher_head">所有导师</div>
		<form action="/teacher/AdminDelTeacherServlet" method="post">
			<table style="width: 100%; font-size: 20px; text-align: center;">
				<tr id="no_hover2">
					<th style="width: 100px;">导师编号</th>
					<th style="width: 100px;">导师姓名</th>
					<th style="width: 100px;">密码</th>
					<th style="width: 100px;">导师职称</th>
					<th style="width: 400px;">导师简介</th>
					<th>删除</th>
				</tr>

				<c:forEach var="teacher" items="${adminQueryAllTeacherList}">
					<tr>
						<td>${teacher.teacher_number}</td>
						<td>${teacher.teacher_name }</td>
						<td>${teacher.password}</td>
						<td>${teacher.teacher_title}</td>
						<td style="font-size: 20px;">${teacher.teacher_info }</td>
						<td><input style="width: 20px; height: 20px;" type="checkbox"
							name="check" value="${teacher.teacher_number}"></td>
					</tr>
				</c:forEach>

				<tr id="del2">
					<td colspan="6" style="margin-bottom: 0;"><input type="submit"
						value="确认删除"></td>
				</tr>
			</table>
		</form>
	</div>

	<!-- 判断是否单击了查询所有学生的按钮，true就show出来 -->
	<%
		String msg3 = (String) session.getAttribute("msg3");
	if ("AdminQueryAllTeacherServlet".equals(msg3)) {
	%>
	<script>
		$("#admin_query_all_teacher").show();
	</script>
	<%
		session.removeAttribute("msg3");
	}
	msg3 = null;
	%>

	<div id="admin_query_student">
		<div id="admin_query_student_head">查询学生</div>
		<table>
			<form action="/teacher/AdminQueryStudentServlet" method="post">
				<tr>
					<td colspan="2"><input id="search_student_box" type="text"
						name="student_number" placeholder="输入学号查询" required="required"
						style="width: 70%;"> <input type="submit" value="搜索"
						style="background: #3EC475; height: 40px; width: 70px; margin-left: 40px; font-size: 25px;"></td>
				</tr>
			</form>

			<th style="padding-top: 20px;" class="tr1" colspan="2">查询结果</th>
			<tr class="tr1">
				<td style="width: 40%;">学号</td>
				<td style="width: 60%;" id="query_student_res">${admin_query_student.student_number}</td>
			</tr>
			<tr class="tr1">
				<td>密码</td>
				<td>${ admin_query_student.password}</td>
			</tr>
			<tr class="tr1">
				<td>姓名</td>
				<td>${ admin_query_student.student_name}</td>
			</tr>
			<tr class="tr1">
				<td>所属导师编号</td>
				<td>${ admin_query_student.teacher_number}</td>
			</tr>

			<tr>
				<td colspan="2"><input type="button" value="去修改"
					style="background: #3EC475; text-align: center; cursor: pointer;"
					id="to_update_student"></td>
			</tr>
		</table>
	</div>
	<%
		String msg4 = (String) session.getAttribute("msg4");
	if ("AdminQueryStudentServlet".equals(msg4)) {
	%>
	<script>
		$("#admin_query_student").show();
	</script>
	<%
		session.removeAttribute("msg4");
	}
	msg4 = null;
	%>

	<%
		if (session.getAttribute("admin_query_student") == null) {
	%>
	<script>
		$(function() {
			$(".tr1").empty();
		});
	</script>
	<%
		}
	%>

	<div id="admin_query_teacher">
		<div id="admin_query_teacher_head">查询导师</div>
		<table>
			<form action="/teacher/AdminQueryTeacherServlet" method="post">
				<tr>
					<td colspan="2"><input type="text" name="teacher_number"
						placeholder="输入导师编号查询" required="required" style="width: 70%;">
						<input type="submit" value="搜索"
						style="background: #3EC475; height: 40px; width: 70px; margin-left: 40px; font-size: 25px;"></td>
				</tr>
			</form>
			<th style="padding-top: 20px;" class="tr2" colspan="2">查询结果</th>
			<tr class="tr2">
				<td style="width: 40%;">导师编号</td>
				<td style="width: 60%;" id="query_teacher_res">${admin_query_teacher.teacher_number}</td>
			</tr>
			<tr class="tr2">
				<td>密码</td>
				<td>${ admin_query_teacher.password}</td>
			</tr>
			<tr class="tr2">
				<td>导师姓名</td>
				<td>${ admin_query_teacher.teacher_name}</td>
			</tr>
			<tr class="tr2">
				<td>导师职称</td>
				<td>${ admin_query_teacher.teacher_title}</td>
			</tr>
			<tr>
				<td colspan="2"><input id="to_update_teacher" type="button"
					value="去修改 "
					style="background: #3EC475; text-align: center; cursor: pointer;"></td>
			</tr>
		</table>
	</div>
	<%
		String msg5 = (String) session.getAttribute("msg5");
	if ("AdminQueryTeacherServlet".equals(msg5)) {
	%>
	<script>
		$("#admin_query_teacher").show();
	</script>
	<%
		session.removeAttribute("msg5");
	}
	msg5 = null;
	%>

	<%
		if (session.getAttribute("admin_query_teacher") == null) {
	%>
	<script>
		$(function() {
			$(".tr2").empty();
		});
	</script>
	<%
		}
	%>


	<div id="admin_update_student">
		<div id="admin_update_student_head">修改学生</div>
		<form action="/teacher/AdminUpdateStudentServlet" method="post">
			<table>
				<tr>
					<td>学号:&nbsp;&nbsp;<input type="text" name="student_number"
						placeholder="${admin_query_student.student_number}    (不可修改)"
						disabled="disabled" style="width: 300px;"></td>
				</tr>
				<tr>
					<td>姓名:&nbsp;&nbsp;<input type="text" name="student_name"
						placeholder="${ admin_query_student.student_name}"
						style="width: 300px;"></td>
				</tr>
				<tr>
					<td>密码:&nbsp;&nbsp;<input type="text" name="password"
						placeholder="${ admin_query_student.password}"
						style="width: 300px;"></td>
				</tr>
				<tr>
					<td>导师:&nbsp;&nbsp;<input type="text" name="teacher_number"
						placeholder="${ admin_query_student.teacher_number}"
						style="width: 300px;"></td>
				</tr>
				<tr>
					<td>学生简介 <br /> <textarea
							placeholder="${ admin_query_student.student_info}"
							name="student_info" cols="38" rows="5"
							style="margin-top: 20px; font-size: 20px;"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="确认修改"
						style="background: #3EC475"></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="admin_update_teacher">
		<div id="admin_update_teacher_head">修改导师</div>
		<form action="/teacher/AdminUpdateTeacherServlet" method="post">
			<table>
				<tr>
					<td>导师编号:&nbsp;&nbsp;<input type="text" name="teacher_number"
						placeholder="${admin_query_teacher.teacher_number}    (不可修改)"
						style="width: 300px;" disabled="disabled"></td>
				</tr>
				<tr>
					<td>导师姓名:&nbsp;&nbsp;<input type="text" name="teacher_name"
						style="width: 300px;"
						placeholder="${ admin_query_teacher.teacher_name}"></td>
				</tr>
				<tr>
					<td>导师密码:&nbsp;&nbsp;<input type="text" name="password"
						style="width: 300px;"
						placeholder="${ admin_query_teacher.password}"></td>
				</tr>
				<tr>
					<td>导师职称:&nbsp;&nbsp;<input type="text" name="teacher_title"
						style="width: 300px;"
						placeholder="${ admin_query_teacher.teacher_title}"></td>
				</tr>
				<tr>
					<td>导师简介 <br> <textarea
							placeholder="${ admin_query_teacher.teacher_info} "
							name="teacher_info" cols="38" rows="5"
							style="margin-top: 20px; font-size: 20px;"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="确认修改"
						style="background: #3EC475"></td>
				</tr>
			</table>
		</form>
	</div>


	<div id="admin_del_a_student">
		<div id="admin_del_a_student_head">删除学生</div>
		<table>
			<form action="/teacher/AdminDelAStudentServlet" method="post">
				<table>
					<tr>
						<td colspan="2"><input   type="text"
							name="student_number" placeholder="输入需要删除的学生的学号"
							required="required" style="width: 70%;"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="确认删除"
							style="background: #3EC475; text-align: center; cursor: pointer;"
							 ></td>
					</tr>
				</table>
			</form>
	</div>
		<%
		String msg6 = (String) session.getAttribute("msg6");
	if ("AdminDelAStudentServlet".equals(msg6)) {
	%>
	<script>
		$("#admin_del_a_student").show();
	</script>
	<%
		session.removeAttribute("msg6");
	}
	msg6 = null;
	%>
	
	<div id="admin_del_a_teacher">
		<div id="admin_del_a_teacher_head">删除导师</div>
		<table>
			<form action="/teacher/AdminDelATeacherServlet" method="post">
				<table>
					<tr>
						<td colspan="2"><input   type="text"
							name="teacher_number" placeholder="输入需要删除的导师的编号"
							required="required" style="width: 70%;"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="确认删除"
							style="background: #3EC475; text-align: center; cursor: pointer;"
							 ></td>
					</tr>
				</table>
			</form>
	</div>
		<%
		String msg7 = (String) session.getAttribute("msg7");
	if ("AdminDelATeacherServlet".equals(msg7)) {
	%>
	<script>
		$("#admin_del_a_teacher").show();
	</script>
	<%
		session.removeAttribute("msg7");
	}
	msg7 = null;
	%>


</body>

</html>
