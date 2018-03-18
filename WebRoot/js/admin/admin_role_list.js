$(function() {
	$("button[id*='updateBtn-']").each(function(){	// 取得修改按钮
		var rid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			var title = $("#title-" + rid).text() ;
			var note = $("#note-" + rid).text() ;
			console.log("rid = " + rid + "，title = " + title + "，note = " + note) ;
			// 编写Ajax异步数据调用，读取角色以及对应的权限组信息，同时显示模态窗口
			$("#roleInfo").modal("toggle") ;
		}) ;
	}) ;
	$("#submitBtn").on("click",function(){
		// 编写Ajax异步更新操作
		$("#roleInfo").modal("toggle") ;
		operateAlert(true,"角色信息修改成功！","角色信息修改失败！") ;
	}) ;
})