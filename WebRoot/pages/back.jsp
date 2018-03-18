<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
</head>
<body class="manback">
	<div class="container contentback" >
		<div id="headDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<jsp:include page="/pages/include_menu_manager.jsp" />
			</div>
		</div>
		<div id="contentDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<strong>标题</strong>
					</div>
					<div class="panel-body">内容</div>
					<div class="panel-footer">
						<div class="alert alert-success" id="alertDiv" style="display: none;">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							<span id="alertText"></span>
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
