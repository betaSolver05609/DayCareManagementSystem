
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular-route.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/angular.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body ng-app="BabySitterManagement" ng-controller="HomeController" id="index">
<header class="jumbotron">
<h1 align="center" class="display-5" id="heading">DayCare Management System</h1>
<hr>
</header>
<br><br><br><br>
<nav>
<div id="content" class="front">
<a href="<%=request.getContextPath() %>/ControllerServlet?action=Registration" class="btn btn-primary btn-lg">Toddler Registration</a><br><br><br>
<a href="<%=request.getContextPath() %>/ControllerServlet?action=ViewDetails" class="btn btn-primary btn-lg">View Toddler Information</a></button>
</div>
</nav>
<br><br><br><br><br><br>
<footer>
<hr>
<h1 align="center" id="footing">@Copyright Someindra Kumar Singh 1418080</h1>
</footer>
<div ng-view>{{message}}</div>
</body>
</html>