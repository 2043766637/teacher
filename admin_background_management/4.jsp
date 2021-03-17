<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
session.removeAttribute("admin_query_teacher");
session.removeAttribute("admin_query_student");
%>  
<script type="text/javascript">
alert("该编号不存在");
location.href="/teacher/admin_background_management/admin_background_management.jsp";
 
</script>
</body>
</html>