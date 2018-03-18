<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String insertDocumentUrl = basePath + "pages/jsp/admin/document/admin_document_insert.jsp" ;
	String updateDocumentUrl = basePath + "pages/jsp/admin/document/admin_document_update.jsp" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/common/common_document_list.js"></script>
</head>
<body class="back">
	<div class="container contentback">
		<div id="headDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<jsp:include page="/pages/include_menu_admin.jsp" />
			</div>
		</div>
		<div id="contentDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<strong>文档列表</strong>
					</div>
					<div class="panel-body">
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="text-center">
										<input type="checkbox" id="selectAll" onclick="checkboxSelectAll('document.did',this.checked)">
									</th>
									<th class="text-center"><strong>标题</strong></th>
									<th class="text-center"><strong>发布者</strong></th>
									<th class="text-center"><strong>发布日期</strong></th>
									<th class="text-center"><strong>文档类型</strong></th>
									<th class="text-center"><strong>操作</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">
										<input type="checkbox" id="document.did" name="document.did" value="1">
									</td>
									<td class="text-center">协同办公系统任务书</td>
									<td class="text-center"><a href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></td>
									<td class="text-center">2017-10-10</td>
									<td class="text-center">项目资料</td>
									<td class="text-center">
										<a class="btn btn-warning" href="<%=updateDocumentUrl%>?did=1">编辑文档</a>
										<a class="btn btn-info" href="">下载附件</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div>
							<button class="btn btn-danger btn-lg" id="deleteBtn">删除文档</button>
							<a href="<%=insertDocumentUrl%>" class="btn btn-info btn-lg">上传文档</a>
						</div>
						<ul class="pagination pagination-sm pull-right">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li class="disabled"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
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
