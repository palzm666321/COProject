<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
		String loginUrl = "UserLoginAction!login.action" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/login.js"></script>
</head>
<body class="box">
	<div class="container login-box">
		<div class="login-title text-center">
			<h1><small><span class="glyphicon glyphicon-user"></span>&nbsp;协同办公管理登录</small></h1>
		</div>
		<div class="login-content">
			<form class="form-horizontal" id="myform" action="" method="post">
				<div class="form-group" id="user.useridDiv">
					<div class="col-md-10 col-md-push-1">
						<input type="text" id="user.userid" name="user.userid" class="form-control"
							placeholder="请输入登录用户名">
					</div>
				</div>
				<div class="form-group" id="user.useridDiv">
					<div class="col-md-10 col-md-push-1">
						<input type="text" id="user.password" name="user.password" class="form-control"
							placeholder="请输入登录密码">
					</div>
				</div>
				<div class="form-group" id="codeDiv">
					<div class="col-md-8 col-md-push-1">
						<input type="text" id="code" name="code" class="form-control"
							placeholder="请输入验证码">
					</div>
					<div class="col-md-2"><img src="ImageCode" id="imageCode" title="看不清？单击换一张图片"></div>
				</div>
				<div class="form-group">
					<div class="col-md-6 col-md-offset-4">
						<button type="submit" class="btn btn-primary" id="editBtn">登录</button>
						<button type="reset" class="btn btn-warning">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
