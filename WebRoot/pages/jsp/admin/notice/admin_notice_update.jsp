<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String insertUrl = basePath + "pages/admin/notice/NoticeActionBack!insert.action" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/admin/admin_notice_update.js"></script>
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
						<strong>编辑系统公告</strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="<%=insertUrl%>" id="myform" method="post">
							<fieldset>
								<!-- 定义表单提示框 -->
								<legend>
									<label><span class="glyphicon glyphicon-edit"></span>&nbsp;编辑系统公告</label>
								</legend>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="notice.titleDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="notice.title">公告标题：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="notice.title" name="notice.title" class="form-control"
											placeholder="请输入公告标题" value="协同办公系统平台上线">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="notice.titleMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="notice.noteDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.password">公告内容：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<textarea id="notice.note" name="notice.note" class="form-control" placeholder="请输入登录密码" rows="10">方便办公，以后都在此平台上进行任务分配</textarea>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="notice.noteMsg"></div>
								</div>
								<div class="form-group" id="user.levelDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="user.level">阅读级别：</label>
									<div class="col-md-5">
										<select id="notice.level" name="notice.level" class="form-control">
											<option value="2">所有员工</option>
											<option value="1">项目经理</option>
										</select>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="user.levelMsg"></div>
								</div>
								<div class="form-group">
									<div class="col-md-5 col-md-offset-3">
										<input type="hidden" name="notice.snid" id="notice.snid" value="1">
										<button type="submit" class="btn btn-primary">编辑</button>
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
