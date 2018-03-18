$(function() {
	$("#myform").validate({
		debug : true, // 取消表单的提交操作
		submitHandler : function(form) {
			form.submit(); // 提交表单
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
			"task.title" : {
				required : true,
				remote : {
//									url : "check.jsp", // 后台处理程序
//									type : "post", // 数据发送方式
//									dataType : "html", // 接受数据格式
//									data : { // 要传递的数据
//										code : function() {
//											return $("#code").val();
//										}
//									},
//									dataFilter : function(data, type) {
//										if (data.trim() == "true")
//											return true;
//										else
//											return false;
//									}
				}
			},
			"receiver.userid" : {
				required : true
			},
			"tasktype.ttid" : {
				required : true
			},
			"task.expiredate" : {
				required : true ,
				dateISO : true
			},
			"task.estimate" : {
				required : true,
				number : true
			},
			"task.note" : {
				required : true
			} ,
			"task.priority" : {
				required : true 
			}
		} 
	});
	$("#task\\.expiredate").datetimepicker({
		language: 'zh-CN', 	// 中文资源文件
		weekStart: 1,		// 一周从哪一天开始 0表示星期天
	    todayBtn:  true,		// 日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。
	    autoclose: true, 		// 当选择一个日期之后是否立即关闭此日期时间选择器。
	    todayHighlight: 1,	// 如果为true, 高亮当前日期
	    startView: 2, 		// 日期时间选择器打开之后首先显示的视图。 2 or 'month' for month view (the default)
	    forceParse: 1,		// 当选择器关闭的时候，是否强制解析输入框中的值。
	    showMeridian: 1 , 	// 选项里是否有天或小时
	    minView: "month" , 	// 选择日期后，不会再跳转去选择时分秒
	    format: 'yyyy-mm-dd' 
    });
})