<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
	<div class="navbar-header">
		<a class="navbar-brand" href="pages/jsp/manager/manager_index.jsp"><strong>协同办公管理系统（项目经理）</strong></a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="pages/jsp/manager/manager_index.jsp">首页</a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">文档管理<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/manager/document/manager_document_insert.jsp">添加文档</a></li>
				<li><a href="pages/jsp/manager/document/manager_document_admin.jsp">我的文档</a></li>
				<li><a href="pages/jsp/manager/document/manager_document_list.jsp">资源库</a></li>
				<li><a href="#"></a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">项目管理<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/manager/project/manager_project_list.jsp">项目列表</a></li>
				<li><a href="pages/jsp/manager/task/manager_task_admin.jsp">任务管理</a></li>
				<li><a href="#"></a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown">公告信息<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="pages/jsp/manager/notice/manager_notice_list.jsp">查看公告</a></li>
				<li><a href="#"></a></li> 
			</ul></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown"><a href="javascript:;"
			class="dropdown-toggle" data-toggle="dropdown"> <i
				class="glyphicon glyphicon-user"></i>&nbsp;MLDN&nbsp;<span
				class="glyphicon glyphicon-chevron-down"></span></a>
			<ul class="dropdown-menu main-list">
				<li><a href="pages/jsp/manager/manager/manager_password_edit.jsp"><i class="glyphicon glyphicon-edit"></i>&nbsp;修改密码</a></li>
				<li><a href="pages/jsp/manager/manager/manager_manager_update.jsp"><i class="glyphicon glyphicon-info-sign"></i>&nbsp;个人资料</a></li>
				<li class="divider"></li>
				<li><a href="LoginAction!logout.action"><i class="glyphicon glyphicon-off"></i>&nbsp;登录注销</a></li>
			</ul>
		</li>
		<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
	</ul>
</nav>
