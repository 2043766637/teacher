<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.8.3.min.js"></script>
<script>
 
</script>
</head>
<style>
#no_click_background {
	z-index: 9;
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0px;
	top: 0px;
	opacity: 0.5;
	display: none;
	background-color: #222;
	display: none;
	top: 0px;
}

#add_all_info {
    z-index:10;
	width: 360px;
	height: 400px;
	 position : absolute;
	margin: 0 auto;
	top: 50%;
	left: 50% ;
	transform: translate(-50%, -50%);
	position: absolute;
	background: green;
}
</style>
<body>
	<div id="no_click_background">
		<div id="add_all_info">
			<form action="/teacher/AddStudentAllInfoServlet" method="post">
				姓名<input type="text" name="student_name"/><br> 所属导师编号<input
					type="text" name="teacher_number"/><br> <input type="submit"
					value="确认添加"/>
			</form>
		</div>
	</div>
	
	
	<h1>点击不了把</h1>

</body>
</html>