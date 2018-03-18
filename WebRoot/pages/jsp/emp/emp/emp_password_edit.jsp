<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String updatePath = basePath + "pages/jsp/manager/manager/ManagerAcionBack!updatePassword.action" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
</head>
<body class="userback">
	<div class="container contentback">
		<div id="headDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<jsp:include page="/pages/include_menu_emp.jsp" />
			</div>
		</div>
		<div id="contentDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<strong>修改登录密码</strong>
					</div>
					<div class="panel-body">
						<jsp:include page="/pages/include_password_form.jsp">
							<jsp:param name="formUrl" value="<%=updatePath%>"/>
						</jsp:include>
					</div>
					<div class="panel-footer">
						<div class="alert alert-info" style="display: none;">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							<h4><strong><span class="glyphicon glyphicon-warning-sign"></span>&nbsp;操作完成</strong></h4><hr>
							<a class="alert-link" href="http://www.yootk.com">警告信息</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footDiv" class="row navbar-fixed-bottom">
			<jsp:include page="/pages/include_foot.jsp" />
		</div>
	</div>
</body>
</html>
