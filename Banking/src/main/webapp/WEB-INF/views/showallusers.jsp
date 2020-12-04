<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${user.userType == 'ADMIN'}">
	</c:if>

	Welcome user ${user.username } <a href="logout">logout</a>
	<br />

	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>username</th>
				<th>password</th>
				<th>userType</th>
				<th>update</th>
				<th>delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="userr">
				<tr>
					<td>${userr.id}</td>
					<td>${userr.username}</td>
					<td>${userr.password}</td>
					<td>${userr.userType}</td>
					<c:if test="${user.userType == 'ADMIN'}">
						<td><a href="updateuser?id=${userr.id}">update user</a></td>
						<td><a href="deleteuser?id=${userr.id}">delete user</a></td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<c:if test="${user.userType == 'ADMIN' || user.userType == 'EMPLOYEE'}">
		<a href="addaccount.do">add account</a>
	</c:if>
	<c:if test="${user.userType == 'ADMIN'}">
		<a href="adduser.do">add user</a>
		<a href="updateuser.do">update user</a>
		<a href="home.do">transfer</a>
		<a href="transactions.do">transactions</a>
		<a href="accountdetails.do">account details</a>
	</c:if>
</body>
</html>