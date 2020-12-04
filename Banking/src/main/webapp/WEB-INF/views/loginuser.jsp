<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="loginuser" method="post" modelAttribute="user">

	<table>
		<tr>
			<td>Enter username</td>
			<td><form:input path="username" /></td>
		</tr>
		<tr>
			<td>Enter password</td>
			<td><form:input path="password" /></td>
		</tr>
	
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
</form:form>
</body>
</html>