$(function() {
	$("button[id*='updateBtn-']").each(function(){	// 取得修改按钮
		var snid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			var level = $("#level-" + snid).val() ;
			console.log("snid = " + snid + "，level = " + level) ;
			// 编写Ajax异步数据调用 
			operateAlert(true,"公告阅读级别修改成功！","公告阅读级别修改失败！") ;
		}) ;
	}) ;
	$("#deleteBtn").on("click",function(){	// 绑定用户锁定操作
		operateChecked("确定要删除这些文档信息吗？","document.did",'pages/jsp/admin/document/DocumentActionBack!delete.action?p=p') ;
	}) ;
}) ;