<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular-route.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/angular.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body id="ViewDetails" ng-app="BabySitterManagement" ng-controller="ErrorController">
<header>
<h1 align="center">Day care ManagementSystem</h1>
<hr>
</header>
<br><br><br><br><br><br><br><br>
<h1 align="center" class="display-1">{{errorMessage}}</h1>
<br><br><br><br><br><br>
<footer>
<hr>
<h1 align="center">@Copyright Someindra Kumar Singh 1418080</h1>
</footer>


</body>
</html>