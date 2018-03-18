$(function() {
	$("button[id*='showBtn-']").each(function(){	// 取得修改按钮
		var tid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			console.log("tid = " + tid) ;
			loadTask(tid) ;
		}) ;
	}) ;
})

function loadTask(tid) {
	// 编写Ajax异步数据调用，读取角色以及对应的权限组信息，同时显示模态窗口
	$("#taskInfo").modal("toggle") ;
}