<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String insertNoticeUrl = basePath + "pages/jsp/admin/notice/admin_notice_insert.jsp" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/admin/admin_notice_list.js"></script>
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
						<strong>公告信息列表</strong>
					</div>
					<div class="panel-body">
						<jsp:include page="/pages/split_page_plugin_search.jsp"/>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="text-center">
										<input type="checkbox" id="selectAll" onclick="checkboxSelectAll('notice.snid',this.checked)">
									</th>
									<th class="text-center"><strong>标题</strong></th>
									<th class="text-center"><strong>发布者</strong></th>
									<th class="text-center"><strong>发布日期</strong></th>
									<th class="text-center"><strong>阅读量</strong></th>
									<th class="text-center"><strong>阅读级别</strong></th>
									<th class="text-center"><strong>操作</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">
										<input type="checkbox" id="notice.snid" name="notice.snid" value="1">
									</td>
									<td class="text-center">《协同办公系统发布》</td>
									<td class="text-center"><a href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></td>
									<td class="text-center">2017-10-10</td>
									<td class="text-center">10</td>
									<td class="text-center">
										<select id="level-1" name="level-1">
											<option value="1">全部雇员</option>
											<option value="2">项目经理</option>
										</select>
									</td>
									<td class="text-center">
										<button type="button" class="btn btn-success" id="updateBtn-1">修改级别</button>
										<a type="button" class="btn btn-warning" href="pages/jsp/admin/notice/admin_notice_update.jsp?snid=1">编辑公告</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div>
							<button class="btn btn-danger btn-lg" id="deleteBtn">删除公告</button>
							<a href="<%=insertNoticeUrl%>" class="btn btn-info btn-lg">增加公告</a>
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
