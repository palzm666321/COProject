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
<script type="text/javascript" src="js/emp/emp_project_list.js"></script>
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
						<strong>项目信息列表</strong>
					</div>
					<div class="panel-body">
						<jsp:include page="/pages/split_page_plugin_search.jsp"/>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="text-center"><strong>项目名称</strong></th>
									<th class="text-center"><strong>发布者</strong></th>
									<th class="text-center"><strong>项目负责人</strong></th>
									<th class="text-center"><strong>发布日期</strong></th>
									<th class="text-center"><strong>操作</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">协同办公系统</td>
									<td class="text-center"><a href="pages/jsp/manager/user/manager_user_show.jsp?userid=mldn">mldn</a></td>
									<td class="text-center"><a href="pages/jsp/manager/user/manager_user_show.jsp?userid=mldn">lixinghua</a></td>
									<td class="text-center">2017-10-10</td>
									<td class="text-center">
										<a type="button" class="btn btn-info" href="pages/jsp/emp/task/emp_task_list.jsp?proid=1">查看所有任务</a>
										<a type="button" class="btn btn-warning" href="pages/jsp/emp/task/emp_task_admin.jsp?proid=1">我的任务</a>
									</td>
								</tr>
							</tbody>
						</table>
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
