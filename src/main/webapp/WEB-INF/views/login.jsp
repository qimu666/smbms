<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 超市订单管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css"/>
</head>
<body class="login_bg">
<section class="loginBox">
    <header class="loginHeader">
        <h1>超市订单管理系统</h1>
    </header>
    <section class="loginCont">
        <form class="loginForm">
            <span class="info" id="info"></span>
            <div class="inputbox">
                <label for="userCode">用户名：</label>
                <input type="text" class="input-text" id="userCode" value="" name="userCode" placeholder="请输入用户名"
                       required/>
            </div>
            <div class="inputbox">
                <label for="userPassword">密码：</label>
                <input type="password" id="userPassword" value="" name="userPassword" placeholder="请输入密码" required/>
            </div>
            <div class="subBtn">
                <input id="login" type="submit" value="登录"/>
                <input type="reset" value="重置"/>
            </div>
        </form>
    </section>
</section>
</body>
<script type="module" src="${pageContext.request.contextPath }/static/js/axios.js"></script>
<script type="module" src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.min.js"></script>
<script type="module" src="${pageContext.request.contextPath }/static/js/login.js"></script>
</html>
