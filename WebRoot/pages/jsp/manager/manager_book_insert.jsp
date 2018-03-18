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
</head>
<body class="manback">
	<div class="container contentback">
		<div id="headDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<jsp:include page="/pages/include_menu_manager.jsp" />
			</div>
		</div>
		<div id="contentDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<strong>标题</strong>
					</div>
					<div class="panel-body">
						<form id="form1" name="form1" method="post" action=""
							class="form-group">
							<table>
								<tr>
									<td width="28%">文档类型</td>
									<td width="72%"><label> <select name="select2"
											class="form-control">
												<option>技术文档</option>
												<option>设计文档</option>
										</select>
									</label></td>
								</tr>
								<tr>
									<td>文档标题</td>
									<td><label> <input type="text" name="textfield"
											class="form-control" />
									</label></td>
								</tr>
								<tr>
									<td>文档内容</td>
									<td><label> <textarea name="textfield2" cols="50"
												rows="10" class="form-control"></textarea>
									</label></td>
								</tr>
								<tr>
									<td>附件资料</td>
									<td><label> <label for="exampleInputFile">File
												input</label> <input type="file" id="exampleInputFile">
									</label></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="Submit" value="提交"
										class="btn btn-default" /></td>
								</tr>
							</table>
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
