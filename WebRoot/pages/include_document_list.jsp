<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/common/common_document_list.js"></script>
<table class="table table-condensed">
	<thead>
		<tr>
			<th class="text-center"><strong>标题</strong></th>
			<th class="text-center"><strong>发布者</strong></th>
			<th class="text-center"><strong>发布日期</strong></th>
			<th class="text-center"><strong>文档类型</strong></th>
			<th class="text-center"><strong>操作</strong></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="text-center">协同办公系统任务书</td>
			<td class="text-center"><a href="${param.showUrl}?userid=mldn">mldn</a></td>
			<td class="text-center">2017-10-10</td>
			<td class="text-center">项目资料</td>
			<td class="text-center">
				<button type="button" class="btn btn-success" id="showBtn-1">查看文档</button>
				<a class="btn btn-info" href="">下载附件</a>
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
<div class="modal fade" id="documentInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true">
	<div class="modal-dialog" style="width: 1000px">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h3 class="modal-title">
					<span class="glyphicon glyphicon-eye-open"></span>
					<strong>查看“协同办公系统任务书”文档</strong></h3>
			</div>
			<div class="modal-body">
				<table class="table table-bordered table-hover table-condensed table-responsive">
					<tr>
						<td><strong>文档名称：</strong></td>
						<td><span id="titleSpan">协同办公系统发布</span></td>
					</tr>
					<tr>
						<td><strong>文档类型：</strong></td>
						<td>软件设计</td>
					</tr>
					<tr>
						<td><strong>文档发布者：</strong></td>
						<td><a href="pages/jsp/manager/user/manager_user_show.jsp?userid=mldn">mldn</a></td>
					</tr>
					<tr>
						<td><strong>发布日期：</strong></td>
						<td><span id="pubdateSpan">2017-10-10</span></td>
					</tr>
					<tr>
						<td><strong>公告内容：</strong></td>
						<td><pre class="pre-scrollable" style="width:750px;text-align: left;background: white;"><span id="noteSpan">公告描述内容</span></pre></td>
					</tr>
					<tr>
						<td><strong>文档附件：</strong></td>
						<td>下载</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭窗口</button>
			</div>
		</div>
	</div>
</div>