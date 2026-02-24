<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@page import="com.pack1.CustomerBean"%>
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
ProductBean pb=(ProductBean)request.getAttribute("ProductBean");
CustomerBean cb=(CustomerBean)session.getAttribute("CustomerBean");
out.println("<center> hello "+cb.getF_name()+"</center>");
%>
<br>
<a href="cview" style="color:green border:1px solid green";>View Products</a><br><br>
<a href="logout" style="color:green";>Logout</a><br><br>
</h1>
</body>
</html>