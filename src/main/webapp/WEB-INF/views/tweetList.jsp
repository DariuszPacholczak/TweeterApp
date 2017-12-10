<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>TEXT</th>
			<th>USER</th>
			<th>CREATED</th>
		</tr>
		<c:forEach items="${tweet}" var="tweet">
			<tr>
				<td><a href="${tweet.id}">${tweet.text}</a></td>
				<td><a href="../users/${tweet.user.id}">${tweet.user.firstName}
						${tweet.user.lastName}</a></td>
				<td>${tweet.created}</td>
				<td><a href="edit/${tweet.id}" />edit</td>
				<td><a href="delete/${tweet.id}" />delete</td>
			</tr>
		</c:forEach>
	</table>
	<form:form method="post" modelAttribute="newTweet">
		<form:errors path="text" cssClass="error" element="div" />
		Text:<form:input path="text" />
		<br>
		<input type="submit" value="Submit">
	</form:form>
	<a href="add"> Add new tweet</a>
	<br>
	<a href="../"> Back to main menu</a>
</body>
</html>