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
<body>
	<c:if test="${user.userType == 'ADMIN'}">
	</c:if>

	Welcome user ${user.username } <a href="logout">logout</a>
	<br />
	<table>
		<thead>
			<tr>
				<th>accountId</th>
				<th>name</th>
				<th>balance</th>
				<th>address</th>
				<th>phone</th>
				<th>email</th>
				<th>aadharCard</th>
				<th>birthDate</th>
				<th>panNumber</th>
				<th>accountType</th>
				<th>update</th>
				<th>delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${accounts}" var="account">
				<tr>
					<td>${account.accountId}</td>
					<td>${account.name}</td>
					<td>${account.balance}</td>
					<td>${account.address}</td>
					<td>${account.phone}</td>
					<td>${account.email}</td>
					<td>${account.aadharCard}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${account.birthDate}" /></td>
					<td>${account.panNumber}</td>
					<td>${account.accountType}</td>
					<c:if test="${user.userType == 'ADMIN'}">
						<td><a href="updateaccount.do?accountId=${account.accountId}">update account</a></td>
						<td><a href="deleteaccount.do?accountId=${account.accountId}">delete account</a></td>
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
	</c:if>
</body>
</html>