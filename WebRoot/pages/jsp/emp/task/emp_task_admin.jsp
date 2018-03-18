<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String updatePreTaskUrl = "pages/jsp/manager/task/manager_task_update.jsp" ;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>协同办公管理系统</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<jsp:include page="/pages/include_javascript.jsp" />
<script type="text/javascript" src="js/emp/emp_task_admin.js"></script>
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
						<strong>分配我的项目任务</strong>
					</div>
					<div class="panel-body">
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
										<button type="button" class="btn btn-danger" id="finishBtn-1"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;任务总结</button>
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
						
						<div class="modal fade" id="taskFinishInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true"> 
							<div class="modal-dialog" style="width: 1000px">
								<div class="modal-content">
									<div class="modal-header">
										<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h3 class="modal-title">
											<span class="glyphicon glyphicon-ok-sign"></span>
											<span class="text-success"><strong>《软件系统设计》任务完成回馈</strong></span></h3>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" id="myform" action="" method="post">
											<div class="form-group" id="expendDiv">
												<!-- 定义表单提示文字 -->
												<label class="col-md-3 control-label" for="expend">消耗工时（小时）：</label>
												<div class="col-md-5">
													<!-- 定义表单输入组件 -->
													<input type="text" id="expend" name="expend" class="form-control"
														placeholder="请输入任务完成所消耗的工时">
												</div>
												<!-- 定义表单错误提示显示元素 --> 
												<div class="col-md-4" id="expendMsg"></div>
											</div>
											<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
											<div class="form-group" id="rnoteDiv">
												<!-- 定义表单提示文字 -->
												<label class="col-md-3 control-label" for="rnote">任务完成：</label>
												<div class="col-md-5">
													<textarea rows="10" id="rnote" name="rnote"
														class="form-control" placeholder="请输入任务完成过程中出现的问题以及个人总结"></textarea>
												</div>
												<!-- 定义表单错误提示显示元素 -->
												<div class="col-md-4" id="rnoteMsg"></div>
											</div>
											<div class="form-group">
												<div class="col-md-5 col-md-offset-3">
													<input type="hidden" name="tid" id="tid" value="">
													<button type="submit" class="btn btn-primary" id="editBtn">提交完成总结</button>
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
