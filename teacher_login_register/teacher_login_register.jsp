<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>导师窗口</title>
<link rel="stylesheet" href="css/style.css">
</head>
<style>
label span{
font-size: 20px;
}
</style>
<body  >
 <div style="width: 100%;height: 100%;  position: absolute;"  onclick="window.location.href='/teacher/index.jsp'"></div>
    <div class="content" style="box-shadow: 0 0 30px #000;border-radius: 15px;">
    
    <form action="/teacher/TeacherLoginServlet" method="post" id="loginForm"  >
        <div class="form sign-in"  >
            <h2>导师登录</h2>
            <label>
            <span style="font-size: 20px;">导师编号</span>
                <input type="text" name="teacher_number" required="required"    style=" font-size: 20px;" />
            </label>
            <label>
                <span style="font-size: 20px;">密码</span>
                <input type="password" name="password" required="required" style=" font-size: 20px;"/>
            </label>
            <p class="forgot-pass"><a href="javascript:">忘记密码？</a></p>
            <button type="submit" class="submit" 
 >登 录</button>
           
             
        </div>
        </form>
        <div class="sub-cont"  >
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，发现大量机会！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                  
                    <span class="m--in">登 录</span>
                </div>
            </div>
            <form action="/teacher/TeacherRegisterServlet" method="post">
            <div class="form sign-up">
                <h2>立即注册</h2>
                <label>
                    <span>导师编号</span>
                    <input type="text" name="teacher_number" required="required"/>
                </label>
                <label>
                    <span>密码</span>
                    <input type="password" name="password"  required="required"/>
                </label>
                <p class="forgot-pass"><a href="javascript:">&nbsp;</a></p>
                <button type="submit" class="submit">注 册</button>
                
            </div>
            </form>
        </div>
    </div>

    <script src="js/script.js"></script>
</body>

</html>