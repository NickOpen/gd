<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html>
<head>
<title>top</title>
<%@ include  file="/WEB-INF/jsp/public/common.jspf"%>
<script src="${pageContext.request.contextPath}/script/showNowTime.js"></script>

<style>
.clock {
	margin-top: 15px;
}

</style>
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">
				<img src="style/images/logo.png" style="width:60px;margin-top:10px;"><a
					class="navbar-brand" href="#">IMS</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
				<li><a title="系统通知" target="right" href="${pageContext.request.contextPath}/systemNoticeAction_list.action">
					<i class="fa fa-bell-o fa-lg"></i><span class="badge">${count}</span></a></li>
					<li><a
						href="${pageContext.request.contextPath}/indexAction_index.action"
						target="_parent" title="主页"><i
							class="fa fa-home fa-lg"></i></a></li>
					<li><s:a action="loginLogoutAction_logout" target="_parent" title="注销">
							<i class="fa fa-sign-out fa-lg"></i>
						</s:a></li>
					<li class="clock"><span id="Clock" class="label label-default"></span></li>
					<li><a
						href="javascript: window.parent.right.location.reload(true);"><span
							class="fa fa-refresh fa-lg"></span></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">您好,${user.name}</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
