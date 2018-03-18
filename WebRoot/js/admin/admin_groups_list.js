$(function() {
	$("button[id*='updateBtn-']").each(function(){	// 取得修改按钮
		var gid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			var title = $("#title-" + gid).val() ;
			var note = $("#note-" + gid).val() ;
			console.log("gid = " + gid + "，title = " + title + "，note = " + note) ;
			// 编写Ajax异步更新操作
			operateAlert(true,"权限组信息修改成功！","权限组信息修改失败！") ;
		}) ;
	}) ;
	
	$("button[id*='showBtn-']").each(function(){	// 取得显示按钮
		var gid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			console.log("gid = " + gid) ;
			// 编写Ajax异步更新操作，读取所有的权限信息
			$("#groupsInfo").modal("toggle") ;
		}) ;
	}) ;
})