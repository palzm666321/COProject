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
						<form id="form1" name="form1" method="post" action=""
							class="form-group">
							<table class="table">
								<tr>
									<td width="28%">任务名称</td>
									<td width="72%">设计LOGO</td>
								</tr>
								<tr>
									<td>详细内容</td>
									<td><p>把公司LOGO设计完成，方案参考文档</p>
										<p>&nbsp;</p></td>
								</tr>
								<tr>
									<td>发布人</td>
									<td>XX经理</td>
								</tr>
								<tr>
									<td>任务类型</td>
									<td>产品设计</td>
								</tr>
								<tr>
									<td>任务状态</td>
									<td>已经开始</td>
								</tr>
								<tr>
									<td>优先级</td>
									<td>1级</td>
								</tr>
								<tr>
									<td>截止日期</td>
									<td>2015-12-12</td>
								</tr>
								<tr>
									<td>预计工时</td>
									<td>10小时</td>
								</tr>
								<tr>
									<td>消耗工时</td>
									<td><label> <input type="text" name="textfield"
											class="form-control" />
									</label></td>
								</tr>
								<tr>
									<td>完成情况</td>
									<td><input name="radio" type="radio" id="radio2"
										value="radio" checked> 已完成 <input type="radio"
										name="radio" id="radio" value="radio"> <label
										for="radio"></label> 未完成</td>
								</tr>
								<tr>
									<td>工作详情</td>
									<td><label> <input type="text" name="textfield2"
											class="form-control" />
									</label></td>
								</tr>
								<tr>
									<td>验收情况</td>
									<td>已验收</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="Submit" value="提交"
										class="btn btn-default" /></td>
								</tr>
							</table>
						</form>
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
