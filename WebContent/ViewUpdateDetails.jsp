<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body id="ViewUpdateDetails">
<header class="jumbotron">
<h1 align="center" class="display-5" id="heading">DayCare Management System</h1>
<hr>
</header>
<%String name=(String)request.getAttribute("name");
int age=(Integer)request.getAttribute("age");
int id=(Integer)request.getAttribute("id");
String babySitterName=(String)request.getAttribute("babySitterName");
%>
<form action="<%=request.getContextPath() %>/ControllerServlet">
<input type="hidden" name="action" value="updateSta"/>
<table border="4" cellspacing="10" cellpadding="12">
<tr>
<th>ID</th>
<td><input type="hidden"  name="id" value="<%=id %>"/><%=id %></td>
<tr>
<tr>
<th>name</th>
<td><input type="text" name="toddlerName" value="<%=name %>"/></td>
</tr>
<tr>
<th>Age</th>
<td><%=age %></td>
</tr>
<tr>
<th>babySitterName</th>
<td><input type="text" name="babySitter" value="<%=babySitterName %>"/>
</td>
<tr>
<td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-lg"/></td>
</tr>

</table>

</form>
<br><br><br><br>
<footer>
<hr>
<h1 align="center" id="footing">@Copyright Someindra Kumar Singh 1418080</h1>
</footer>
</body>
</html>