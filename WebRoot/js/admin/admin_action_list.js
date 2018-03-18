$(function() {
	$("button[id*='updateBtn-']").each(function(){
		var actid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			var title = $("#title-" + actid).val() ;
			var url = $("#url-" + actid).val() ;
			console.log("actid = " + actid + "，title = " + title + "，url = " + url) ;
			// 编写Ajax异步更新操作
			operateAlert(true,"权限信息修改成功！","权限信息修改失败！") ;
		}) ;
	}) ;
})