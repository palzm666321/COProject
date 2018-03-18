<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String insertUserUrl = basePath + "pages/jsp/admin/user/admin_user_insert.jsp" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/admin/admin_user_lock_list.js"></script>
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
						<strong>锁定用户列表</strong>
					</div>
					<div class="panel-body">
						<div id="splitSearchDiv">
							<jsp:include page="/pages/split_page_plugin_search.jsp"/>
							<br>
						</div>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="text-center">
										<input type="checkbox" id="selectAll" onclick="checkboxSelectAll('user.userid',this.checked)">
									</th>
									<th class="text-center"><strong>用户ID</strong></th>
									<th class="text-center"><strong>姓名</strong></th>
									<th class="text-center"><strong>电话</strong></th>
									<th class="text-center"><strong>邮箱</strong></th>
									<th class="text-center"><strong>级别</strong></th>
									<th class="text-center"><strong>状态</strong></th>
									<th class="text-center"><strong>操作</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">
										<input type="checkbox" id="user.userid" name="user.userid" value="1">
									</td>
									<td class="text-center">1</td>
									<td class="text-center">Sachin</td>
									<td class="text-center">13689091234</td>
									<td class="text-center">mldnqa@163.com</td>
									<td class="text-center">
										<select id="level-1" name="level-1">
											<option value="2">普通雇员</option>
											<option value="1">项目经理</option>
										</select>
									</td>
									<td class="text-center">锁定</td>
									<td class="text-center">
										<div class="btn-group">
											<button type="button" class="btn btn-md btn-info dropdown-toggle" data-toggle="dropdown">
												<span class="glyphicon glyphicon-list"></span>&nbsp;编辑
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a data-toggle="modal" data-target="#userPassword" onmouseover="this.style.cursor='hand'"><span class="glyphicon glyphicon-edit"></span>&nbsp;变更密码</a></li>
												<li class="divider"></li>
												<li><a id="userBtn" onmouseover="this.style.cursor='hand'">
													<span class="glyphicon glyphicon-pencil"></span>&nbsp;用户信息</a>
												</li>
											</ul>
										</div>
										<button type="button" class="btn btn-success" id="updateBtn-1">修改级别</button>
									</td>
								</tr>
							</tbody>
						</table>
						<div>
							<button class="btn btn-danger btn-lg" id="activeBtn">激活用户</button>
							<a href="<%=insertUserUrl%>" class="btn btn-info btn-lg">增加用户</a>
						</div>
						<div id="splitBarDiv" style="float:right">
							<jsp:include page="/pages/split_page_plugin_bars.jsp"/>
						</div>
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
		<div class="modal fade" id="userPassword"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true">
			<div class="modal-dialog" style="width: 1000px">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h3 class="modal-title">
							<span class="glyphicon glyphicon-cog"></span>
							<strong>修改“MLDN”用户密码</strong></h3>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" id="myform" method="post">
							<fieldset>
								<div class="form-group" id="user.passwordDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="password">登录密码：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="password" id="password" name="password"
											class="form-control" placeholder="请输入新的登录密码">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="passwordMsg"></div>
								</div>
								<div class="form-group">
									<div class="col-md-5 col-md-offset-3">
										<button type="submit" class="btn btn-primary">修改密码</button>
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
		<div class="modal fade" id="userInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true">
			<div class="modal-dialog" style="width: 1000px">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h3 class="modal-title">
							<img src="upload/user/nophoto.jpg" style="width:128px;height:128px;">
							<strong>修改“MLDN”用户信息</strong></h3>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" id="userForm" action="" method="post">
							<div class="form-group" id="useridDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="userid">登录名称：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="userid" name="userid" class="form-control" placeholder="请输入登录用户名" value="MLDN" readonly="true">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="useridMsg"></div>
							</div>
							<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
							<div class="form-group" id="nameDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="name">真实姓名：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="name" name="name" class="form-control" placeholder="请输入用户真实姓名" value="魔乐科技">
								</div>
								<!-- 定义表单错误提示显示元素 --> 
								<div class="col-md-4" id="nameMsg"></div>
							</div>
							<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
							<div class="form-group" id="phoneDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="phone">联系电话：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="phone" name="phone" class="form-control" placeholder="请输入联系电话" value="51283346">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="phoneMsg"></div>
							</div>
							<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
							<div class="form-group" id="emailDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="email">联系邮箱：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="email" name="email" class="form-control" placeholder="请输入联系邮箱" value="mldnqa@163.com">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="emailMsg"></div>
							</div>
							<div class="form-group" id="levelDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="level">用户级别：</label>
								<div class="col-md-5">
									<select id="level-" name="level" class="form-control">
										<option value="2">普通雇员</option>
										<option value="1">项目经理</option>
									</select>
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="levelMsg"></div>
							</div>
							<div class="form-group">
								<div class="col-md-5 col-md-offset-3">
									<button type="submit" class="btn btn-primary" id="editBtn">修改</button>
									<button type="reset" class="btn btn-warning">重置</button>
								</div>
							</div>
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
