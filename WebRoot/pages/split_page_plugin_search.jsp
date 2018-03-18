<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--
<div id="splitSearchDiv">
	<jsp:include page="/pages/split_page_plugin_search.jsp"/>
	<br>
</div>
 --%>
<%
	request.setCharacterEncoding("UTF-8") ;
%>
<%
	String columnData = null ;
	String keyWord = null ;
	int allRecorders = 0 ;
	String column = null ;
%>
<%
	try {
		allRecorders = (Integer) request.getAttribute("allRecorders") ;
	} catch (Exception e) {}
	columnData = (String)  request.getAttribute("columnData") ;
	keyWord = (String)  request.getAttribute("keyWord") ;
	column = (String) request.getAttribute("column") ;
%>

<div class="row">
	<form action="xx.action" method="post" class="form-group"
		id="splitSearchForm">
		<fieldset>
			<div class="form-group">
				<div class="col-md-2">&nbsp;</div>
				<%
					if (columnData != null) {
				%>
					<div class="col-md-3">
						<select id="col" name="col" class="form-control">
				<%
							String result [] = columnData.split("\\|") ;
							for (int x = 0 ; x < result.length ; x ++) {
								String temp[] = result[x].split(":") ;
				%>
								<option value="<%=temp[1]%>" <%=column.equals(temp[1])?"selected":""%>><%=temp[0]%></option>
				<%
							}
				%>
						</select>
					</div>
				<%
					}
				%>
				<div class="col-md-5">
					<input type="text" name="kw" id="kw" class="form-control"
						value="${keyWord}" placeholder="请输入检索关键字">
				</div>
				<div class="col-md-2">
					<button type="button" onclick="goSplit(1)" class="btn btn-info">检索</button>
					<input type="hidden" name="${paramName}" value="${paramValue}">
					<input type="hidden" name="cp" value="1">
				</div>
			</div>
		</fieldset>
	</form>
</div>
<div class="row">
	<div class="col-md-7 col-md-push-5"> 
		<p class="text-info">满足查询条件的数据量：${allRecorders}</p>
	</div>
</div>