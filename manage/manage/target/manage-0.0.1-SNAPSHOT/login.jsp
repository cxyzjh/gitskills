<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<style type="text/css">
#titp {
	text-align: center;
	color: #FF0000
}
</style>
<title>登录系统</title>
<script type="text/javascript">
	function dologin() {
            			window.location.href="index.jsp";
	}
</script>
</head>
<body>
	<div id="w" class="easyui-window" title="欢迎使用系统"
		data-options="modal:true,iconCls:'Lockgo',closable:false,minimizable:false,maximizable:false"
		style="width: 400px; padding: 20px 70px 20px 70px;">
		<div style="margin-bottom: 10px">
			<input class="easyui-textbox" id="userCode" name="userCode" autofocus="autofocus"
				style="width: 100%; height: 30px; padding: 12px" 
				data-options="prompt:'用户名',iconCls:'icon-man',iconWidth:38,required:true">
		</div>
		<div style="margin-bottom: 20px">
			<input class="easyui-textbox" id="password" type="password" name="password"
				style="width: 100%; height: 30px; padding: 12px"
				data-options="prompt:'登录密码',iconCls:'icon-lock',iconWidth:38,required:true">
		</div>
		<div>
			<a href="javascript:;" onclick="dologin()" class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'"
				style="padding: 5px 0px; width: 100%;"> <span
				style="font-size: 14px;">登录</span>
			</a>
		</div>
	</div>
</body>
</html>