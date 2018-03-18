$(function() {
	$("button[id*='updateBtn-']").each(function(){	// 取得修改按钮
		var dtid = this.id.split("-")[1];	// 分离出id信息
		bindUpdateEvent(dtid) ;
	}) ;
	$("#insertBtn").on("click",function(){
		$("#docTypeInfo").modal("toggle") ;
	}) ; 
	$("#myform").validate({
		debug : true, // 取消表单的提交操作
		submitHandler : function(form) {
			alert("执行Ajax异步增加，同时回填新的数据行") ; 
			var title = $("#doctype\\.title").val() ;
			addRow(5,title) ;
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
			"doctype.title" : {
				required : true,
//				remote : {
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
//				} 
			}
		}
	});
})
/**
 * 增加新的数据行信息
 * @param dtid 新增加的文档分类编号
 * @param title 新增的文档类型标题
 */
function addRow(dtid,title) {
	var str = "<tr><td class='text-center'>" + dtid
			+ "</td><td class='text-center'><input type='text' id='title-" + dtid + "' name='title-" + dtid + "' class='form-control input-sm' value='" + title + "'>" 
			+ "</td><td class='text-center'>" +
					"<button class='btn btn-primary' id='updateBtn-" + dtid + "'>" 
			+ "<span class='glyphicon glyphicon-edit'></span>&nbsp;修改</button></td></tr>";
	$("#dtTab").append($(str)) ;
	bindUpdateEvent(dtid) ;
	$("#doctypeInfo").modal("toggle") ;
	operateAlert(true,"文档类型信息增加成功！","文档类型信息增加失败！") ;
}
function bindUpdateEvent(dtid) {
	$("#updateBtn-" + dtid).on("click",function() {
		var title = $("#title-" + dtid).val() ;
		console.log("dtid = " + dtid + "，title = " + title) ;
		// 编写Ajax异步更新操作
		operateAlert(true,"文档类型信息修改成功！","文档类型信息修改失败！") ;
	}) ;
}