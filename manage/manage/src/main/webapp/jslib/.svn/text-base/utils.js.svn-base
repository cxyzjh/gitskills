
/*
 * 删除方法可以删掉得到datagrid中所有选择的数据，并进行删除，参数是需要调用的url，传递给后台的参数是ids
 * Delete method can delete all selected data in the datagrid, and delete, parameter is the url you need to call, passed to the parameters of the background is the ids
 */
function delALLData(url) {
	var selectedRows = dataGrid.edatagrid("getSelections");
	if (selectedRows.length == 0) {
		$.messager.alert("系统提示", "请选择要删除的数据！");
		return;
	}
	var strIds = [];
	for (var i = 0; i < selectedRows.length; i++) {
		strIds.push(selectedRows[i].id);
	}
	var ids = strIds.join(",");
	$.messager.confirm("系统提示", "您确定要删除这<font color=red>"
			+ selectedRows.length + "</font>条数据吗？", function(r) {
		if (r) {
			$.post(url, {
				ids : ids
			}, function(count) {
				if (count>0) {
					$.messager.show({
						title : '保存',
						msg : '数据删除成功',
						timeout : 1000,
						showType : 'slide'
					});
					dataGrid.edatagrid("reload");
					dataGrid.edatagrid("unselectAll");
				} else {
					$.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
				}
			}, "json");
		}
	});
}
/*
 * 基本的datagrid增删改查，提供四个参数，分别提供查询、新增、修改、删除的url。
 * 
 */
function getDataGrid(url,saveUrl,updateUrl,delUrl){
	$.ajax({  
		url : url,
	    dateType : 'json',  
	    type : 'post',  
	    success : function(r) {  
	    	console.info('['+JSON.stringify(r.columns)+']');
	    	dataGrid=$('#dg').edatagrid({  
	        	url :  url,  
				saveUrl : saveUrl,
				updateUrl:updateUrl,
	            fit : true,
	            idField : 'id',
	            border : false,  
	            pagination : true,  
	            rownumbers : true,  
	            fitColumns : true,
	            singleSelect:false,
	            columns : jQuery.parseJSON('['+JSON.stringify(r.columns)+']'),
				toolbar : [ {
					iconCls : 'icon-add',
					text : '新增',
					handler : function() {
						dataGrid.edatagrid("unselectAll");
						dataGrid.edatagrid('addRow', 0);
					}
				}, '-', {
					iconCls : 'icon-edit',
					text : '修改',
					handler : function() {
						var row =$('#dg').edatagrid('getSelected');
						var index = $('#dg').edatagrid('getRowIndex',row);
						dataGrid.edatagrid('editRow',index);
					}
				}, '-', {
					iconCls : 'icon-save',
					text : '保存',
					handler : function() {
						dataGrid.edatagrid('saveRow');
					}
				}, '-', {
					text : '取消',
					iconCls : 'icon-redo',
					handler : function() {
						dataGrid.edatagrid('cancelRow');
					}
				}, '-', {
					text : '删除',
					iconCls : 'icon-del',
					handler : function() {
						delALLData(delUrl);
					}
				} ],
				onSuccess : function(index, row) {
					$.messager.show({
						title : '保存',
						msg : '数据保存成功',
						timeout : 1000,
						showType : 'slide'
					});
//					dataGrid.datagrid("unselectAll");
//					dataGrid.datagrid("onUncheckAll");
//					dataGrid.datagrid('endEdit', 0);
//					dataGrid.datagrid('refreshRow', 0);
//					dataGrid.datagrid('uncheckRow', 0);
//					dataGrid.datagrid('unselectRow', 0);
//					dataGrid.datagrid('clearSelections');
					dataGrid.datagrid('reload');//这个可以用
					//dataGrid.datagrid('acceptChanges');
				}
	        });   
	    }  
	});  
} 