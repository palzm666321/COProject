$(function() {
	$("button[id*='showBtn-']").each(function(){	// 取得修改按钮
		var snid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			console.log("snid = " + snid) ;
			// 异步Ajax读取公告信息
			loadNotice(snid) ;
		}) ;
	}) ;
}) ; 

function loadNotice(snid) {
	// 编写Ajax异步数据调用，读取角色以及对应的权限组信息，同时显示模态窗口
	$("#noticeInfo").modal("toggle") ;
}