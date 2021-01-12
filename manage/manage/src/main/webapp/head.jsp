<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入jQuery -->
<script src="${pageContext.request.contextPath}/jslib/jquery-1.9.1.js"
	type="text/javascript" charset="utf-8"></script>
	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/jquery.cookie.js"
	charset="utf-8"></script>

<!-- 引入EasyUI -->
<link id="easyuiTheme" rel="stylesheet"
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.5.1/themes/<c:out value="${cookie.easyuiThemeName.value}" default="default"/>/easyui.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.5.1/themes/icon.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.5.1/jquery.easyui.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/utils.js"></script>


</head>
<body>

</body>
</html>