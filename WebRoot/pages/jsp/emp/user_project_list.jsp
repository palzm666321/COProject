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
<body class="userback">
	<div class="container contentback">
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
					<div class="panel-body">
						<table class="table table-condensed">
							<tr>
								<th width="6%">选择</span></th>
								<th width="5%">编号</th>
								<th width="13%">标题</th>
								<th width="6%">级别</th>
								<th width="7%">指派给</th>
								<th width="13%">起止时间</th>
								<th width="13%">结束时间</th>
								<th width="9%">任务类型</th>
								<th width="9%">任务状态</th>
								<th width="19%">操作</th>
							</tr>
							<tr>
								<td><span class="STYLE1"> <input name="checkbox"
										type="checkbox" />
								</span></td>
								<td>1</td>
								<td><a href="user_tab_view.html">JAVA开发</a></td>
								<td>1级</td>
								<td>张三</td>
								<td>2015-11-11</td>
								<td>2015-11-13</td>
								<td>任务类型</td>
								<td>已经开始</td>
								<td>&nbsp;
									<button type="button" class="btn btn-danger">完成</button>
								</td>
							</tr>
							<tr>
								<td><span class="STYLE1"> <input name="checkbox"
										type="checkbox" />
								</span></td>
								<td>1</td>
								<td><a href="user_tab_view.html">JAVA开发</a></td>
								<td>1级</td>
								<td>张三</td>
								<td>2015-11-11</td>
								<td>2015-11-13</td>
								<td>任务类型</td>
								<td>已经开始</td>
								<td>&nbsp;
									<button type="button" class="btn btn-danger">完成</button>
								</td>
							</tr>
						</table>
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
