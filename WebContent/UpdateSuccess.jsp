<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body class="ViewDetails">
<header>
<h1 align="center">Day care ManagementSystem</h1>
<hr>
</header>
<br><br><br><br><br><br><br><br>
<h1 align="center" class="display-1" ng-bind="">The toddler Details with id<%= (Integer)request.getAttribute("id") %> has been Successfully Updated</h1>
<br><br><br><br><br><br>
<footer>
<hr>
<h1 align="center">@Copyright Someindra Kumar Singh 1418080</h1>
</footer>

</body>
</html>