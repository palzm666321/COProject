<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String insertUrl = basePath + "pages/jsp/admin/project/ProjectActionBack!insert.action" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<jsp:include page="/pages/include_javascript.jsp" /> 
<script type="text/javascript" src="js/admin/admin_project_insert.js"></script>
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
						<strong>增加新项目</strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="<%=insertUrl%>" id="myform" method="post">
							<fieldset>
								<!-- 定义表单提示框 -->
								<legend>
									<label><span class="glyphicon glyphicon-file"></span>&nbsp;增加项目信息</label>
								</legend>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="project.titleDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="project.title">项目名称：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="project.title" name="project.title" class="form-control"
											placeholder="请输入项目名称">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="project.titleMsg"></div>
								</div>
								<div class="form-group" id="notice.levelDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="mgr.userid">项目经理：</label>
									<div class="col-md-5">
										<select id="mgr.userid" name="mgr.userid" class="form-control">
											<option value="mldn">魔乐科技</option>
											<option value="li">老李</option>
										</select>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="mgr.useridMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="project.noteDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="role.note">项目描述：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<textarea type="password" id="project.note" name="project.note"
											class="form-control" placeholder="请输入项目描述信息" rows="10"></textarea>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="project.noteMsg"></div>
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
