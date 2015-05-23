<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'add.jsp' starting page</title>

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
.pw{
	width:600px;
	height:80px;
}
.pd{
	margin-left:350px;
}
caption{
	font-weight:bold;
	font-size:28px;
}
</style>
<body>
	<form action="add" method="post">
		<table align="center">
			<caption>宠物的基本信息</caption>
			<tr>
				<td>昵称：</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>品种：</td>
				<td><select name="breed">
						<option value="0" selected>--请选择--</option>
						<option value="1">狗</option>
						<option value="2">猫</option>
						<option value="3">鸟</option>
						<option value="4">兔</option>
				</select></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><input type="radio" name="sex" value="1">雄<input
					type="radio" name="sex" value="2">雌</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" name="birthday"></td>
			</tr>
			<tr>
				<td>宠物描述</td>
				<td><input type="text" name="description" class="pw"></td>
			</tr>
			<tr>
				<td colspan="2"><div class="pd"><input type="submit" value="提交"><input
					type="reset" value="重置"></td></div>
			</tr>
		</table>
	</form>
</body>
</html>
