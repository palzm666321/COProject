<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/common/common_info_update.js"></script>
<% 
	String formUrl = request.getParameter("formUrl");
%>
<form class="form-horizontal" action="<%=formUrl%>" id="myform" method="post" enctype="multipart/form-data">
	<fieldset>
		<!-- 定义表单提示框 -->
		<legend> 
			<label><span class="glyphicon glyphicon-user"></span>&nbsp;个人资料维护</label>
		</legend>
		<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
		<div class="form-group" id="user.useridDiv">
			<!-- 定义表单提示文字 -->
			<label class="col-md-3 control-label" for="user.userid">登录名称：</label>
			<div class="col-md-5">
				<!-- 定义表单输入组件 -->
				<input type="text" id="user.userid" name="user.userid" class="form-control"
					placeholder="请输入登录用户名" readonly="true" value="mldn">
			</div>
			<!-- 定义表单错误提示显示元素 -->
			<div class="col-md-4" id="user.useridMsg"></div>
		</div>
		<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
		<div class="form-group" id="user.nameDiv">
			<!-- 定义表单提示文字 -->
			<label class="col-md-3 control-label" for="user.name">真实姓名：</label>
			<div class="col-md-5">
				<!-- 定义表单输入组件 -->
				<input type="text" id="user.name" name="user.name" class="form-control"
					placeholder="请输入用户真实姓名" value="魔乐科技">
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
					class="form-control" placeholder="请输入联系电话" value="51283346">
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
					class="form-control" placeholder="请输入联系邮箱" value="mldnqa@163.com">
			</div>
			<!-- 定义表单错误提示显示元素 -->
			<div class="col-md-4" id="user.emailMsg"></div>
		</div>
		<div class="form-group" id="user.emailDiv">
			<!-- 定义表单提示文字 -->
			<label class="col-md-3 control-label" for="user.email">个人照片：</label>
			<div class="col-md-5">
				<!-- 定义表单输入组件 -->
				<input type="file" id="photo" name="photo"
					class="form-control" placeholder="请选择要上传的个人照片">
			</div>
			<!-- 定义表单错误提示显示元素 -->
			<div class="col-md-4" id="photoMsg"></div>
		</div>
		<div class="form-group">
			<div class="col-md-5 col-md-offset-3">
				<button type="submit" class="btn btn-primary">修改</button>
				<button type="reset" class="btn btn-warning">重置</button>
			</div>
		</div>
	</fieldset>
</form>
