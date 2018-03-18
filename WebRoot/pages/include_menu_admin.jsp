<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
	<div class="navbar-header">
		<a class="navbar-brand" href="pages/jsp/admin/admin_index.jsp"><strong>协同办公管理系统（管理员）</strong></a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="pages/jsp/admin/admin_index.jsp">首页</a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">用户管理<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/admin/user/admin_user_insert.jsp">添加用户</a></li>
				<li><a href="pages/jsp/admin/user/admin_user_active_list.jsp">活跃用户列表</a></li>
				<li><a href="pages/jsp/admin/user/admin_user_lock_list.jsp">锁定用户列表</a></li>
				<li><a href="#"></a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">公告管理<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/admin/notice/admin_notice_insert.jsp">添加公告</a></li>
				<li><a href="pages/jsp/admin/notice/admin_notice_list.jsp">管理公告</a></li>
				<li><a href="#"></a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">项目管理<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/admin/project/admin_project_insert.jsp">发布项目</a></li>
				<li><a href="pages/jsp/admin/project/admin_project_list.jsp">项目列表</a></li>
				<li><a href="pages/jsp/admin/task/admin_task_type.jsp">任务分类维护</a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">文档管理<span class="caret"></span></a>
			<ul class="dropdown-menu"> 
				<li><a href="pages/jsp/admin/document/admin_document_insert.jsp">上传文档</a></li>
				<li><a href="pages/jsp/admin/document/admin_document_list.jsp">文档列表</a></li>
				<li><a href="pages/jsp/admin/document/admin_document_type.jsp">文档分类维护</a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">权限管理<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/admin/admin/admin_admin_insert.jsp">增加管理员</a></li>
				<li><a href="pages/jsp/admin/admin/admin_admin_list.jsp">管理员列表</a></li>
				<li><a href="pages/jsp/admin/role/admin_role_insert.jsp">增加角色</a></li>
				<li><a href="pages/jsp/admin/role/admin_role_list.jsp">角色列表</a></li>
				<li><a href="pages/jsp/admin/role/admin_groups_list.jsp">权限组列表</a></li>
				<li><a href="pages/jsp/admin/role/admin_action_list.jsp">权限维护</a></li>
				<li><a href="#"></a></li>
			</ul></li>
	</ul> 
	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown"><a href="javascript:;"
			class="dropdown-toggle" data-toggle="dropdown"> <i
				class="glyphicon glyphicon-user"></i>&nbsp;MLDN&nbsp;<span
				class="glyphicon glyphicon-chevron-down"></span></a>
			<ul class="dropdown-menu main-list">
				<li><a href="pages/jsp/admin/admin/admin_password_edit.jsp"><i class="glyphicon glyphicon-edit"></i>&nbsp;修改密码</a></li>
				<li><a href="pages/jsp/admin/admin/admin_admin_update.jsp"><i class="glyphicon glyphicon-info-sign"></i>&nbsp;个人资料</a></li>
				<li class="divider"></li>
				<li><a href="LoginAction!logout.action"><i class="glyphicon glyphicon-off"></i>&nbsp;登录注销</a></li>
			</ul></li>
		<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
	</ul>
</nav>
