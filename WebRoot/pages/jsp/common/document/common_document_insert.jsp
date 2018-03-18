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
<script type="text/javascript" src="js/common/common_document_insert.js"></script>
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
						<strong>增加文档信息</strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="<%=insertUrl%>" id="myform" method="post">
							<fieldset>
								<!-- 定义表单提示框 -->
								<legend>
									<label><span class="glyphicon glyphicon-file"></span>&nbsp;增加新的文档信息</label>
								</legend>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="document.titleDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="document.title">文档标题：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="text" id="document.title" name="document.title" class="form-control"
											placeholder="请输入文档标题">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="document.titleMsg"></div>
								</div>
								<div class="form-group" id="doctype.dtidDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="doctype.dtid">文档类型：</label>
									<div class="col-md-5">
										<select id="doctype.dtid" name="doctype.dtid" class="form-control">
											<option value="1">开发资料</option>
											<option value="2">技术学习</option>
											<option value="3">公司制度</option>
										</select>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="doctype.dtidMsg"></div>
								</div>
								<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
								<div class="form-group" id="document.noteDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="document.note">文档简介：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<textarea id="document.note" name="document.note" class="form-control" placeholder="请输入文档的描述信息" rows="10"></textarea>
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="document.noteMsg"></div>
								</div>
								<div class="form-group" id="fileDiv">
									<!-- 定义表单提示文字 -->
									<label class="col-md-3 control-label" for="file">文档附件：</label>
									<div class="col-md-5">
										<!-- 定义表单输入组件 -->
										<input type="file" id="file" name="file"
											class="form-control" placeholder="请选择要上传的文档附件信息">
									</div>
									<!-- 定义表单错误提示显示元素 -->
									<div class="col-md-4" id="fileMsg"></div>
								</div>
								<div class="form-group">
									<div class="col-md-5 col-md-offset-3">
										<button type="submit" class="btn btn-primary">发布</button>
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
