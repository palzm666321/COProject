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
<script type="text/javascript" src="js/admin/admin_role_list.js"></script>
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
						<strong>角色列表</strong>
					</div>
					<div class="panel-body">
						<table class="table table-bordered table-hover table-condensed">
							<thead>
								<tr>
									<td style="width:5%;" class="text-center"><strong>编号</strong></td> 
									<td style="width:25%;" class="text-center"><strong>角色名称</strong></td>
									<td style="width:50%;" class="text-center"><strong>角色描述</strong></td>
									<td style="width:20%;" class="text-center"><strong>操作</strong></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">1</td> 
									<td class="text-center"><span id="title-1">角色名称一</span></td>
									<td class="text-center"><span id="note-1">角色描述一</span></td>
									<td class="text-center"> 
										<button class="btn btn-primary" id="updateBtn-1"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改</button>
									</td>
								</tr>
								<tr>
									<td class="text-center">2</td> 
									<td class="text-center"><span id="title-2">角色名称二</span></td>
									<td class="text-center"><span id="note-2">角色描述二</span></td>
									<td class="text-center"> 
										<button class="btn btn-primary" id="updateBtn-2"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改</button>
									</td>
								</tr>
							</tbody>
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
		<div class="modal fade" id="roleInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true">
			<div class="modal-dialog" style="width: 1000px">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h3 class="modal-title">
							<span class="glyphicon glyphicon-edit"></span>
							<strong>修改“角色名称二”信息</strong></h3>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" action="" id="myform" method="post">
							<fieldset>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="role.titleDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="role.title">角色名称：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="role.title" name="role.title" class="form-control"
											placeholder="请输入角色名称" value="角色名称二">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="role.titleMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="role.noteDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="role.note">角色描述：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="role.note" name="role.note"
											class="form-control" placeholder="请输入角色描述信息" value="角色描述二">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="role.noteMsg"></div>
								</div> 
								<div class="form-group" id="gidDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="gid">包含权限：</label>
									<div class="col-md-5">
										<div class="checkbox">
											<label><input type="checkbox" id="gid" name="gid" value="1">权限组一</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" id="gid" name="gid" value="2">权限组二</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" id="gid" name="gid" value="3">权限组三</label>
										</div>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="gidMsg"></div>
								</div> 
								<div class="form-group">
									<div class="col-md-5 col-md-offset-3">
										<button type="button" class="btn btn-primary" id="submitBtn">修改</button>
										<button type="reset" class="btn btn-warning">重置</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭窗口</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
