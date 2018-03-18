$(function(){
	$("#activeBtn").on("click",function(){	// 绑定用户锁定操作
		operateChecked("确定要激活这些用户吗？","user.userid",'pages/jsp/admin/UserActionBack!active.action?p=p') ;
	}) ;
	$("#userBtn").on("click",function(){
		// Ajax异步读取管理员信息
		// 将异步加载信息填充到模态窗口的组件之中
		$("#userInfo").modal("toggle") ;	// 显示模态窗口
	}) ;
	$("#userForm").validate({
		debug : true, // 取消表单的提交操作
		submitHandler : function(form) {
			alert("执行Ajax异步更新操作！") ;
			$("#userInfo").modal("toggle")
			operateAlert(true,"用户级别修改成功！","用户级别修改失败！") ;
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
			"userid" : {
				required : true
			},
			"name" : {
				required : true
			},
			"password" : {
				required : true
			},
			"phone" : {
				required : true
			},
			"email" : {
				required : true,
				email : true
			},
			"level" : {
				required : true
			}
		} 
	});
	$("#myform").validate({
		debug : true, // 取消表单的提交操作
		submitHandler : function(form) {
			alert("Ajax异步提交表单") ;
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
			"password" : {
				required : true
			}
		}
	});
	// 处理管理员列表页面按钮
	$("button[id*='updateBtn-']").each(function(){	// 取得修改按钮
		var userid = this.id.split("-")[1];	// 分离出id信息
		$(this).on("click",function(){
			var level = $("#level-" + userid).val() ;
			console.log("userid = " + userid + "，level = " + level) ;
			// 编写Ajax异步数据调用
			operateAlert(true,"用户级别修改成功！","用户级别修改失败！") ;
		}) ;
	}) ;
})

