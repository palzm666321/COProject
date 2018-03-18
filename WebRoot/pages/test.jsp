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
<body><div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="input-group">
				<span class="input-group-addon">
					<input type="radio">
				</span>
				<input type="text" class="form-control" placeholder="请选择信息来源">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="input-group">
				<span class="input-group-addon">
					<input type="checkbox" checked>
				</span>
				<input type="text" class="form-control" placeholder="请输入兴趣">
			</div>
		</div>
	</div>
</div>

</body>
</html>
