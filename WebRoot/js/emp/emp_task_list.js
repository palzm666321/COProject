$(function() {
	$("button[id*='showBtn-']").each(function(){	// 取得修改按钮
		var tid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			console.log("tid = " + tid) ;
			loadTask(tid) ;
		}) ;
	}) ;
	
	$("#myform").validate({
		debug : true, // 取消表单的提交操作
		submitHandler : function(form) {
			var cnote = $("#cnote").val() ;
			var tid = $("#tid").val() ;
			console.log("修改数据编号：" + tid + "，原因：" + cnote) ;
			$("#taskCancelInfo").modal("hide") ;
			$("#statusSpan").text("取消") ;
			$("#statusSpan").attr("class","text-danger") ;
			alert("执行Ajax异步更新操作，同时修改项目状态") ; 
		},
		errorPlacement : function(error, element) {
			$("#" + $(element).attr("id").replace(".", "\\.") + "Msg").append(error);
		},
		highlight : function(element, errorClass) {
			$(element).fadeOut(1,function() {
				$(element).fadeIn(1, function() {
					$("#" + $(element).attr("id").replace(".","\\.") + "Div").attr("class","form-group has-error");
				});

			})
		},
		unhighlight : function(element, errorClass) {
			$(element).fadeOut(1,function() {
				$(element).fadeIn(1,function() {
						$("#" + $(element).attr("id").replace(".","\\.") + "Div").attr("class","form-group has-success");
				});
			})
		},
		errorClass : "text-danger",
		rules : {
			"cnote" : {
				required : true,
			}
		}
	});
	
	$("button[id*='cancelBtn-']").each(function(){	// 取得修改按钮
		var tid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			console.log("tid = " + tid) ;
			$("#tid").val(tid) ;
			$("#taskCancelInfo").modal("show") ;
		}) ;
	}) ;
})

function loadTask(tid) {
	// 编写Ajax异步数据调用，读取角色以及对应的权限组信息，同时显示模态窗口
	$("#taskInfo").modal("toggle") ;
}