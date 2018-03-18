$(function() {
	$("#deleteBtn").on("click",function(){	// 绑定用户锁定操作
		operateChecked("确定要删除这些文档信息吗？","document.did",pageVarDeleteUrl) ;
	}) ;
}) ;