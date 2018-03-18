<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String insertUrl = basePath + "pages/admin/UserActionBack!insert.action" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<jsp:include page="/pages/include_javascript.jsp" /> 
<script type="text/javascript" src="js/admin/admin_user_insert.js"></script>
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
						<strong>添加新用户</strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="<%=insertUrl%>" id="myform" method="post">
							<fieldset>
								<!-- 定义表单提示框 -->
								<legend>
									<label><span class="glyphicon glyphicon-user"></span>&nbsp;增加用户</label>
								</legend>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="user.useridDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.userid">登录名称：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="user.userid" name="user.userid" class="form-control"
											placeholder="请输入登录用户名">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="user.useridMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="user.passwordDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.password">登录密码：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="password" id="user.password" name="user.password"
											class="form-control" placeholder="请输入登录密码">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="user.passwordMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="user.nameDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.name">真实姓名：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="user.name" name="user.name" class="form-control"
											placeholder="请输入用户真实姓名">
									</div>
									<!-- 定义表单错误提示显示元素 --> 
									<div class="col-md-4" id="user.nameMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="user.phoneDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.phone">联系电话：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="user.phone" name="user.phone"
											class="form-control" placeholder="请输入联系电话">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="user.phoneMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="user.emailDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.email">联系邮箱：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="user.email" name="user.email"
											class="form-control" placeholder="请输入联系邮箱">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="user.emailMsg"></div>
								</div>
								<div class="form-group" id="user.levelDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.level">用户级别：</label>
									<div class="col-md-5">
										<select id="user.level" name="user.level" class="form-control">
											<option value="2">普通雇员</option>
											<option value="1">项目经理</option>
										</select>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="user.levelMsg"></div>
								</div>
								<div class="form-group">
									<div class="col-md-5 col-md-offset-3">
										<button type="submit" class="btn btn-primary">增加</button>
										<button type="reset" class="btn btn-warning">重置</button>
									</div>
								</div>
							</fieldset>
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
