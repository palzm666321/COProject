<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/common/common_password_edit.js"></script> 
<% 
	String formUrl = request.getParameter("formUrl");
%>
<form class="form-horizontal" id="myform" method="post" action="<%=formUrl%>">
	<fieldset>
		<!-- 定义表单提示框 -->
		<legend>
			<label><span class="glyphicon glyphicon-cog"></span>&nbsp;修改登录密码</label>
		</legend>
		<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
		<div class="form-group" id="oldpasswordDiv">
			<!-- 定义表单提示文字 -->
			<label class="col-md-3 control-label" for="oldpassword">原始密码：</label>
			<div class="col-md-5">
				<!-- 定义表单输入组件 -->
				<input type="password" id="oldpassword" name="oldpassword"
					class="form-control" placeholder="请输入原始登录密码">
			</div>
			<!-- 定义表单错误提示显示元素 -->
			<div class="col-md-4" id="oldpasswordMsg"></div>
		</div>
		<div class="form-group" id="newpasswordDiv">
			<!-- 定义表单提示文字 -->
			<label class="col-md-3 control-label" for="newpassword">新的密码：</label>
			<div class="col-md-5">
				<!-- 定义表单输入组件 -->
				<input type="password" id="newpassword" name="newpassword"
					class="form-control" placeholder="请输入新的登录密码">
			</div>
			<!-- 定义表单错误提示显示元素 -->
			<div class="col-md-4" id="newpasswordMsg"></div>
		</div>
		<div class="form-group" id="confpasswordDiv">
			<!-- 定义表单提示文字 -->
			<label class="col-md-3 control-label" for="confpassword">确认密码：</label>
			<div class="col-md-5">
				<!-- 定义表单输入组件 -->
				<input type="password" id="confpassword" name="confpassword"
					class="form-control" placeholder="请重复输入密码">
			</div>
			<!-- 定义表单错误提示显示元素 -->
			<div class="col-md-4" id="confpasswordMsg"></div>
		</div>
		<div class="form-group">
			<div class="col-md-5 col-md-offset-3">
				<button type="submit" class="btn btn-primary">修改</button>
				<button type="reset" class="btn btn-warning">重置</button>
			</div>
		</div>
	</fieldset>
</form>
