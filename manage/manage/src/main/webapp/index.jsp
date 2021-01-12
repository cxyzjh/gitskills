<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.manage.entity.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业管理系统</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jslib/ztree/css/zTreeStyle/zTreeStyle.css">
<jsp:include page="head.jsp"></jsp:include>

<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
%>
	

<%
	} else {
%>
<%
	response.sendRedirect("login.jsp");
%>
<%
	}
%>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/ztree/js/jquery.ztree.all.min.js"></script>
<script type="text/javascript">
	//定义tab页面变量
	var index_tabs;
	//定义页面布局
	var index_layout;
	//渲染页面布局 
	$(function() {
		index_layout = $('#cc').layout({
			//设置页面大小为自适应
			fit : true
		});

	});

	var setting = {
		data : {
			simpleData : {
				enable : true,
				idKey : "id",
				pIdKey : "pid",
				rootPId : 999999
			},
			key : {
				name : "pname"
			},
		},
		view : {
			selectedMulti : false
		},
		callback : {
			onClick : function(e, id, node) {
				if (node.name == '员工管理') {
					node.url = "view/system/user.jsp";
					addTab(node);
				}
			}
		}
	};
	$(document).ready(function() {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/tree/getTreegrid.do",
			success : function(zNodes) {
				$.fn.zTree.init($("#menu"), setting, zNodes);
			}
		});
	});

	var centerTabs;
	var tabsMenu;

	$(function() {
		//初始化tab页签
		centerTabs = $('#centerTabs').tabs({
			fit : true
		});
	});

	$(function() {
		tabsMenu = $('#tabsMenu').menu(
				{
					onClick : function(item) {
						var curTabTitle = $(this).data('tabTitle');
						var type = $(item.target).attr('type');

						if (type === 'refresh') {
							refreshTab(curTabTitle);
							return;
						}

						if (type === 'close') {
							var t = centerTabs.tabs('getTab', curTabTitle);
							if (t.panel('options').closable) {
								centerTabs.tabs('close', curTabTitle);
							}
							return;
						}

						var allTabs = centerTabs.tabs('tabs');
						var closeTabsTitle = [];

						$.each(allTabs, function() {
							var opt = $(this).panel('options');
							if (opt.closable && opt.title != curTabTitle
									&& type === 'closeOther') {
								closeTabsTitle.push(opt.title);
							} else if (opt.closable && type === 'closeAll') {
								closeTabsTitle.push(opt.title);
							}
						});

						for (var i = 0; i < closeTabsTitle.length; i++) {
							centerTabs.tabs('close', closeTabsTitle[i]);
						}
					}
				});

		centerTabs = $('#centerTabs').tabs({
			fit : true,
			border : false,
			onContextMenu : function(e, title) {
				e.preventDefault();
				tabsMenu.menu('show', {
					left : e.pageX,
					top : e.pageY
				}).data('tabTitle', title);
			}
		});
	});

	//添加tab页方法
	function addTab(node) {
		if (centerTabs.tabs('exists', node.name)) {
			centerTabs.tabs('select', node.name);
		} else {
			$.messager.progress({
				text : '页面加载中....',
				interval : 100
			});
			window
					.setTimeout(
							function() {
								try {
									$.messager.progress('close');
									centerTabs
											.tabs(
													'add',
													{
														title : node.name,
														closable : true,
														content : '<iframe src="'
																+ node.url
																+ '" frameborder="0" scrolling="yes" style="border:0;width:100%;height:100%;"></iframe>',
														tools : [ {
															iconCls : 'icon-mini-refresh',
															handler : function() {
																refreshTab(node.name);
															}
														} ]
													});
								} catch (e) {
								}
							}, 1000);

		}
	}

	function refreshTab(title) {
		var tab = centerTabs.tabs('getTab', title);
		centerTabs.tabs('update', {
			tab : tab,
			options : tab.panel('options')
		});
	}
	
	function logout(){
		$.ajax({
			url : "${pageContext.request.contextPath }/user/logout.do",
			success : function(res) {
				if(res.success){
					window.location.replace("login.jsp");
				}
			}
		});
	}
</script>
</head>
<body>
	<!-- 设置页面布局 -->
	<div id="cc" class="easyui-layout" style="width: 700px; height: 400px;">
		<div data-options="region:'north',title:'企业管理系统',split:true">
			<div style="position: absolute; right: 0px; bottom: 0px;">
				<span>登陆用户 : <% if(user != null) {%>
					<%=user.getUserName() %>
				<%} %></span>
				<a href="javascript:void(0)" id="mb" class="easyui-menubutton"
					iconCls="icon-back" menu="#layout_north_zxMenu">注销</a>
			</div>
		</div>
		<div data-options="region:'south',title:'South Title',split:true"
			style="height: 100px;"></div>
		<div data-options="region:'east',title:'East',split:true"
			style="width: 100px;"></div>
		<div data-options="region:'west',title:'菜单列表',split:true"
			style="width: 130px;">
			<div class="easyui-accordion" fit="true" border="false">
				<div>
					<ul id="menu" class="ztree"></ul>
				</div>
				<div title="其他" href=""></div>
			</div>
		</div>
		<div data-options="region:'center',title:'主页'" style="padding: 5px;">
			<div id="centerTabs">
				<div title="首页" border="false" href="" style="overflow: hidden;">
					<div>欢迎使用员工管理系统</div>
				</div>
			</div>
			<div id="tabsMenu" style="width: 120px; display: none;">
				<div type="refresh">刷新</div>
				<div class="menu-sep"></div>
				<div type="close">关闭</div>
				<div type="closeOther">关闭其他</div>
				<div type="closeAll">关闭所有</div>
			</div>
		</div>
	</div>

	<div id="layout_north_zxMenu" style="width: 100px; display: none;">
		<div onclick="logout();">重新登录</div>
		<div onclick="logout(true);">退出系统</div>
	</div>
</body>
</html>