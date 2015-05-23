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

<title>My JSP 'upda.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<style>
.pw {
	width: 600px;
	height: 80px;
}

.pd {
	margin-left: 350px;
}

caption {
	font-weight: bold;
	font-size: 28px;
}
</style>
<body>
	<form action="up" method="post">
		<table align="center">
			<caption>宠物的基本信息</caption>
			<c:forEach var="up" items="${list}">
				<tr>
					<td>昵称：</td>
					<td><input type="text" name="name" value="${up.petName}"><input
						type="hidden" name="id" value="${up.petId}"></td>

				</tr>
				<tr>
					<td>品种：</td>
					<td><c:choose>
							<c:when test="${up.petBreed==1}">
								<select name="breed">
									<option value="0">--请选择--</option>
									<option value="1" selected>狗</option>
									<option value="2">猫</option>
									<option value="3">鸟</option>
									<option value="4">兔</option>
								</select>
							</c:when>
							<c:when test="${up.petBreed==2}">
								<select name="breed">
									<option value="0">--请选择--</option>
									<option value="1">狗</option>
									<option value="2" selected>猫</option>
									<option value="3">鸟</option>
									<option value="4">兔</option>
								</select>
							</c:when>
							<c:when test="${up.petBreed==3}">
								<select name="breed">
									<option value="0">--请选择--</option>
									<option value="1">狗</option>
									<option value="2">猫</option>
									<option value="3" selected>鸟</option>
									<option value="4">兔</option>
								</select>
							</c:when>
							<c:otherwise>
								<select name="breed">
									<option value="0">--请选择--</option>
									<option value="1">狗</option>
									<option value="2">猫</option>
									<option value="3">鸟</option>
									<option value="4" selected>兔</option>
								</select>
							</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td><c:if test="${up.petSex==1}">
							<input type="radio" name="sex" value="1" checked="checked">雄<input
								type="radio" name="sex" value="2">雌</c:if> <c:if
							test="${up.petSex==2}">
							<input type="radio" name="sex" value="1">雄
							<input type="radio" name="sex" value="2" checked="checked">雌</c:if></td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td><c:set var="ip" value="${up.birthday }" /><input
						type="text" name="birthday" value="${fn:split(ip,' ')[0]}"></td>
				</tr>
				<tr>
					<td>宠物描述</td>
					<td><input type="text" name="desciption" class="pw"
						value="${up.desciption }"></td>
				</tr>
				<tr>
					<td colspan="2"><div class="pd">
							<input type="submit" value="修改"><input type="reset"
								value="重置">
						</div></td>

				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>
