<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="bean.toddler, bean.babySitter, java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular-route.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/angular.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body ng-model="BabySitterManagement" ng-controller="RegistrationController">
<header class="jumbotron">
<h1 align="center" id="heading">DayCare Management System</h1>
<hr>
</header>
<form action="<%=request.getContextPath() %>/ControllerServlet">
<input type="hidden" name="action" value="registerDetails"/>
<table border="4" cellspacing="10" cellpadding="12">
<tr>
<th>ToddlerId</th>
<td><input type="text" name="toddlerid" id="toddlerid" onblur="validate()" ng-model="toddlerId"/></td>
</tr>
<tr>
<th>ToddleName</th>
<td><input type="text" name="toddlerName"/></td>
</tr>
<tr>
<th>ToddlerAge</th>
<td><input type="text" name="toddlerAge" id="toddlerAge" onblur="validate()"/></td>
</tr>
<tr>
<th>Baby Sitters Name</th>
<td><select name="BabySitter">
<% ArrayList<String> al=(ArrayList<String>)request.getAttribute("BabySitterName");
for(String s: al)
{
%>
<option value=<%=s%>><%=s%></option>

<%} %>
</select>
<input type="submit" class="btn btn-primary btn-lg"/>
</table>

</form>
<br><br><br><br>
<footer>
<hr>
<h1 align="center" id="footing">@Copyright Someindra Kumar Singh 1418080</h1>
</footer>
</body>
</html>