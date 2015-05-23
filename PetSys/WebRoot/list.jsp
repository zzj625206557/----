<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'list.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/list.js"></script>
<script type="text/javascript" src="js/del.js"></script>
<script type="text/javascript" src="js/upda.js"></script>
<style>
.list {
	margin-left: 330px;
}

.tab {
	width:800px;
}

.t {
	text-align: center;
	font-weight:bold;
}
.d{
	text-decoration:none;
}
</style>
<body>
	<form method="post" action="list">
		<div class="list">
			品种<select name="breed">
				<option value="0" selected>--请选择--</option>
				<option value="1">狗</option>
				<option value="2">猫</option>
				<option value="3">鸟</option>
				<option value="4">兔</option>
			</select> <input type="submit" value="查询"> <a href="add.jsp">新增宠物</a>
		</div>
		<table border="1" class="tab" align="center">
			<tr>
				<td class="t">ID</td>
				<td class="t">宠物昵称</td>
				<td class="t">出生日期</td>
				<td class="t">性别</td>
				<td class="t">操作</td>
			</tr>
			<c:forEach var="p" items="${list}">
				<tr>
					<td><a href="javascript:up(${p.petId})">${p.petId }</a></td>
					<td>${p.petName }</td>
					<td><c:set var="time" value="${p.birthday}" />
					${fn:split(time,' ')[0]}</td>
					<td><c:if test="${p.petSex=='1' }">雄</c:if><c:if test="${p.petSex=='2' }">雌</c:if></td>
					<td><a href="javascript:del(${p.petId})" class="d">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>
