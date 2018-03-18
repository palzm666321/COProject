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
<script type="text/javascript" src="js/emp/emp_task_list.js"></script>
</head>
<body class="userback">
	<div class="container contentback">
		<div id="headDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<jsp:include page="/pages/include_menu_emp.jsp" />
			</div>
		</div>
		<div id="contentDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<strong>项目任务列表</strong>
					</div>
					<div class="panel-body">
						<jsp:include page="/pages/split_page_plugin_search.jsp"/>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="text-center"><strong>任务名称</strong></th>
									<th class="text-center"><strong>创建者</strong></th>
									<th class="text-center"><strong>实施者</strong></th>
									<th class="text-center"><strong>创建日期</strong></th>
									<th class="text-center"><strong>截至日期</strong></th>
									<th class="text-center"><strong>优先级</strong></th>
									<th class="text-center"><strong>预计工时</strong></th>
									<th class="text-center"><strong>状态</strong></th>
									<th class="text-center"><strong>操作</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">软件系统设计</td>
									<td class="text-center"><a href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></td>
									<td class="text-center"><a href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></td>
									<td class="text-center">2017-10-10</td>
									<td class="text-center">2017-10-13</td>
									<td class="text-center">★★☆</td>
									<td class="text-center">3</td>
									<td class="text-center"><span id="statusSpan">进行中</span></td>
									<td class="text-center">
										<button type="button" class="btn btn-info" id="showBtn-1"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;查看详情</button>
										<button type="button" class="btn btn-warning" id="cancelBtn-1"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;任务完成</button>
									</td>
								</tr>
							</tbody>
						</table>
						<ul class="pagination pagination-sm pull-right">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li class="disabled"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
						<div class="modal fade" id="taskInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true"> 
							<div class="modal-dialog" style="width: 1000px">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h3 class="modal-title">
											<span class="glyphicon glyphicon-eye-open"></span>
											<strong>查看《软件系统设计》任务信息</strong></h3>
									</div>
									<div class="modal-body">
										<table class="table table-bordered table-hover table-condensed table-responsive">
											<tr>
												<td><strong>所属项目：</strong></td>
												<td><span id="projectSpan">协同办公系统</span></td>
											</tr>
											<tr>
												<td><strong>任务名称：</strong></td>
												<td><span id="titleSpan">软件系统设计</span></td>
											</tr>
											<tr>
												<td><strong>任务类型：</strong></td>
												<td><span id="typeSpan">系统分析</span></td>
											</tr>
											<tr>
												<td><strong>任务内容：</strong></td>
												<td><pre class="pre-scrollable" style="width:750px;text-align: left;background: white;"><span id="noteSpan">任务描述内容</span></pre></td>
											</tr>
											<tr>
												<td><strong>任务创建者：</strong></td>
												<td><span id="creatorSpan"><a target="_ablank" href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></span></td>
											</tr>
											<tr>
												<td><strong>任务执行者：</strong></td>
												<td><span id="receiverSpan"><a target="_ablank" href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></span></td>
											</tr>
											<tr>
												<td><strong>任务总结：</strong></td>
												<td><pre class="pre-scrollable" style="width:750px;text-align: left;background: white;"><span id="rnoteSpan">任务执行者总结</span></pre></td>
											</tr>
											<tr>
												<td><strong>任务取消者：</strong></td>
												<td><span id="cancelerSpan"><a target="_ablank" href="pages/jsp/admin/user/admin_user_show.jsp?userid=mldn">mldn</a></span></td>
											</tr>
											<tr>
												<td><strong>取消原因：</strong></td>
												<td><pre class="pre-scrollable" style="width:750px;text-align: left;background: white;"><span id="cnoteSpan">任务取消者总结</span></pre></td>
											</tr>
											<tr>
												<td><strong>优先级：</strong></td>
												<td><span id="prioritySpan">★★☆</span></td>
											</tr>
											<tr>
												<td><strong>创建日期：</strong></td>
												<td><span id="createdateSpan">2017-10-10</span></td>
											</tr>
											<tr>
												<td><strong>截至日期：</strong></td>
												<td><span id="expiredateSpan">2017-10-13</span></td>
											</tr>
											<tr>
												<td><strong>最后一次修改日期：</strong></td>
												<td><span id="lastupdatedateSpan">2017-10-11</span></td>
											</tr>
											<tr>
												<td><strong>预计工时：</strong></td>
												<td><span id="estimateSpan">5</span></td>
											</tr>
											<tr>
												<td><strong>消耗工时：</strong></td>
												<td><span id="expendSpan">3</span></td>
											</tr>
										</table>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">关闭窗口</button>
									</div>
								</div>
							</div>
						</div>
						
						<div class="modal fade" id="taskCancelInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true"> 
							<div class="modal-dialog" style="width: 1000px">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h3 class="modal-title">
											<span class="glyphicon glyphicon-remove-circle"></span>
											<span class="text-danger"><strong>取消《软件系统设计》任务信息</strong></span></h3>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" id="myform" action="" method="post">
											<div class="form-group" id="cnoteDiv">
												<!-- 定义表单提示文字 -->
												<label class="col-md-3 control-label" for="cnote">任务取消原因：</label>
												<div class="col-md-5">
													<select id="cnote" name="cnote" class="form-control">
														<option value="任务安排不合理">任务安排不合理</option>
														<option value="项目重新设计">项目重新设计</option>
														<option value="人事变动">人事变动</option>
														<option value="服务器瘫痪">服务器瘫痪</option>
														<option value="其它">其它</option>
													</select>
												</div>
												<!-- 定义表单错误提示显示元素 -->
												<div class="col-md-4" id="cnoteMsg"></div>
											</div>
											<div class="form-group">
												<div class="col-md-5 col-md-offset-3">
													<input type="hidden" name="tid" id="tid" value="">
													<button type="submit" class="btn btn-primary" id="editBtn">取消</button>
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
