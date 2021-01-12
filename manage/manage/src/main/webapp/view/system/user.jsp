<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户维护</title>
<jsp:include page="../../head.jsp"></jsp:include>
<script type="text/javascript">
	var url = null;
	var dataGrid;
	var userId;
	var searchForm;
	var roleGrid;
	function saveUser() {
		$('#fm').form('submit', {
			url : url,
			onSubmit : function(param) {
				return $(this).form('validate');
			},
			success : function(result) {
				var data = jQuery.parseJSON(result);
				if (data.success == true) {
					$.messager.show({
						title : '提示',
						msg : '数据保存成功',
						timeout : 2000,
						showType : 'slide'
					});
					$("#dlg").dialog('close');
					$("#dg").datagrid('load');
					$('#fm').form('reset');
				}
			}
		});
	}
	$(function() {
		dataGrid = $("#dg")
				.datagrid(
						{
							rownumbers : true,
							pagination : true,
							/* singleSelect : true, */
							collapsible : true,
							url : '${pageContext.request.contextPath }/user/getAllUser.do',
							method : 'post',
							columns : [ [ {
								field : 'id',
								title : '序号',
								checkbox : true
							}, {
								field : 'userName',
								title : '用户名',
								width : 80

							}, {
								field : 'userCode',
								title : '编码',
								width : 140

							}, {
								field : 'email',
								title : '邮箱',
								width : 140

							}, {
								field : 'pwd',
								title : '密码',
								width : 100
							} ] ],
							toolbar : [
									{
										iconCls : 'icon-add',
										text : '新增',
										handler : function() {
											dataGrid = $("#dlg").dialog('open')
													.dialog('setTitle', '新增用户');
											url = '${pageContext.request.contextPath }/user/saveUser.do';
										}
									},
									'-',
									{
										iconCls : 'icon-edit',
										text : '修改',
										handler : function() {
											var selects = $("#dg").datagrid(
													'getSelections');
											if (selects.length != 1) {
												$.messager.alert('提示',
														'只能选择一条数据进行修改', 'info');
											} else {
												$("#dlg").dialog('open')
														.dialog('setTitle',
																'修改用户');
												$('#fm').form('load',
														selects[0]);

												url = '${pageContext.request.contextPath }/user/updateUser.do';
											}
										}
									},
									'-',
									{
										iconCls : 'icon-remove',
										text : '删除',
										handler : function() {
											var selects = $("#dg").datagrid(
													'getSelections');
											if (selects.length < 1) {
												$.messager.alert('提示',
														'请选择需要删除的数据', 'info');
											} else {
												$.messager
														.confirm({
															title : '提示',
															msg : '你确定要删除所选择的数据吗?',
															fn : function(r) {
																if (r) {
																	var ids = [];
																	for (var i = 0; i < selects.length; i++) {
																		ids
																				.push(selects[i].id);
																	}
																	//alert(ids);
																	$
																			.ajax({
																				type : "POST",
																				url : '${pageContext.request.contextPath }/user/deleteUser.do',
																				data : "ids="
																						+ ids,
																				success : function(
																						data) {
																					if (data.success == true) {
																						$.messager
																								.show({
																									title : '提示',
																									msg : '数据删除成功',
																									timeout : 2000,
																									showType : 'slide'
																								});

																						$(
																								"#dg")
																								.datagrid(
																										'load');
																						$(
																								'#fm')
																								.form(
																										'reset');
																					}
																				}
																			});
																}
															}
														});
											}
										}
									} ],
							onSuccess : function(index, row) {
								$.messager.show({
									title : '保存',
									msg : '数据【' + row.userName + '】保存成功',
									timeout : 1000,
									showType : 'slide'
								});
							}
						});

	});
	function closeDialog() {
		$("#dlg1").dialog("close");
	}
	function queryUser() {
		var name = $("#userName").val();
		$("#dg").datagrid('load', {
			userName : name,
		});
	}
	$.parser.onComplete = function() {
		$("#div_show").show();
	}
</script>
</head>
<body class="easyui-layout">
	<!-- 为了弹出操作树 -->
	<div id="dlg1" class="easyui-dialog"
		style="width: 600px; height: 250px; padding: 10px 20px" closed="true"
		buttons="#dlg-button">
		<table id="dg2"></table>
	</div>
	<div id="div_show" style="display: none;">
		<div id="dlg" class="easyui-dialog"
			style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
			buttons="#dlg-buttons">
			<form id="fm" method="post">
				<input type="hidden" name="id" />
				<div>
					<label>用户名</label> <input name="userName" id="fm_userName"
						class="easyui-validatebox" required="true">
				</div>
				<div>
					<label>编码</label> <input name="userCode" class="easyui-validatebox"
						required="true">
				</div>
				<div>
					<label>邮箱</label> <input name="email" class="easyui-validatebox"
						required="true">
				</div>
				<div>
					<label>密码</label> <input name="pwd" class="easyui-validatebox"
						required="true">
				</div>
			</form>
		</div>
		<form id="searchForm" method="post" style="width: 100%; height: 30px;">
			<table>
				<tr>
					<td><label>用户名</label> <input id="userName"
						class="easyui-validatebox" required="true"></td>

					<td><a class="easyui-linkbutton" iconCls="icon-search"
						onclick="queryUser()">查询</a></td>
				</tr>
			</table>
		</form>
		<table id="dg"></table>
		<div id="dlg-buttons">
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
				onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton"
				iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
		</div>
		<div id="dlg-button">
			<a href="javascript:saveDialog()" class="easyui-linkbutton"
				iconCls="icon-ok">保存</a> <a href="javascript:closeDialog()"
				class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
		</div>
	</div>



</body>
</html>