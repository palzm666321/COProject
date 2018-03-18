<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/common/common_document_admin.js"></script>
<script type="text/javascript">
	var pageVarDeleteUrl = "${param.deleteUrl}" ;
</script>
<div id="splitBarDiv" style="float:right">
	<jsp:include page="/pages/split_page_plugin_search.jsp"/>
</div>
<table class="table table-condensed">
	<thead>
		<tr>
			<th class="text-center">
				<input type="checkbox" id="selectAll" onclick="checkboxSelectAll('document.did',this.checked)">
			</th>
			<th class="text-center"><strong>标题</strong></th>
			<th class="text-center"><strong>发布者</strong></th>
			<th class="text-center"><strong>发布日期</strong></th>
			<th class="text-center"><strong>文档类型</strong></th>
			<th class="text-center"><strong>操作</strong></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="text-center">
				<input type="checkbox" id="document.did" name="document.did" value="1">
			</td>
			<td class="text-center">协同办公系统任务书</td>
			<td class="text-center"><a href="${param.showUrl}?userid=mldn">mldn</a></td>
			<td class="text-center">2017-10-10</td>
			<td class="text-center">项目资料</td>
			<td class="text-center">
				<a class="btn btn-warning" href="${param.updatePreUrl}?did=1">编辑文档</a>
				<a class="btn btn-info" href="">下载附件</a>
			</td>
		</tr>
	</tbody>
</table>
<div>
	<button class="btn btn-danger btn-lg" id="deleteBtn">删除文档</button>
</div>
<div id="splitBarDiv" style="float:right">
	<jsp:include page="/pages/split_page_plugin_bars.jsp"/>
</div>