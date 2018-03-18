<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String deleteUrl = basePath + "pages/jsp/manager/document/manager_document_insert.jsp" ;
	String updatePreUrl = basePath + "pages/jsp/manager/document/manager_document_update.jsp" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/common/common_document_admin.js"></script>
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
						<strong>文档列表</strong>
					</div>
					<div class="panel-body">
						<jsp:include page="/pages/include_document_admin.jsp">
							<jsp:param  name="showUrl" value="pages/jsp/emp/user/emp_user_show.jsp"/>
							<jsp:param name="deleteUrl" value="<%=deleteUrl%>"/>
							<jsp:param name="updatePreUrl" value="<%=updatePreUrl%>"/>
						</jsp:include>
					</div>
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
