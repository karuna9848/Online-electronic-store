<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: goldenrod;color: rgb(0, 255, 64);font-family:inherit">
<center>
<h1>
			<%
				session.invalidate();
				out.println("<h1>Customer Loggedout Successfully!!!</h1><br><br>");
			%>
			<%@ include file="index.html" %>
		</h1>
</body>
</html>