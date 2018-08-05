<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="bean.toddler, bean.babySitter, java.util.*" %>
<html ng-app="BabySitterManagement">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/angular.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular-route.min.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body ng-app="BabySitterManagement" ng-controller="HomeController" id="ViewDetails">

<header class="jumbotron">
<h1 align="center" id="heading">DayCare Management System</h1>
<hr>
</header>


<table border="4" cellspacing="10" cellpadding="12">
<tr>
<th>toddlerID</th>
<th>Age</th>
<th>Name</th>
<th>babySitterID</th>
<th>Name</th>
<th>Status</th>
<th>Experience</th>
<th>Type</th>
<th>Age</th>
<th>Action</th>
</tr>

<tr>
<% HashMap<toddler, babySitter> hm=new HashMap<toddler, babySitter>();
hm=(HashMap<toddler, babySitter>)request.getAttribute("HashMap");
for(Map.Entry<toddler, babySitter> m:hm.entrySet())
{
%>

<td><%=m.getKey().getId() %></td>
<td><%=m.getKey().getAge() %></td>
<td><%=m.getKey().getToddlerName() %></td>
<td><%=m.getValue().getId()%></td>
<td><%=m.getValue().getName()%></td>
<td><%=m.getValue().getStatus()%></td>
<td><%=m.getValue().getExperience()%></td>
<td><%=m.getValue().getType()%></td>
<td><%=m.getValue().getAge()%></td>
<td><% if(m.getValue().getType().equalsIgnoreCase("FULL-TIME")) {%>
<a href="<%=request.getContextPath() %>/ControllerServlet?action=updateLink&id=<%=m.getKey().getId()%>&name=<%=m.getKey().getToddlerName()%>&age=<%=m.getKey().getAge()%>&babySitterName=<%=m.getValue().getName()%>">Update</a>
<%} %>
</tr>





<%} %>
</table>

<div ng-view></div>
</body>
</html>