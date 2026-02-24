<%@page import="com.pack1.AdminBean"%>
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
AdminBean abean=(AdminBean)session.getAttribute("AdminBean");
String data=(String)request.getAttribute("msg");
out.println("hello"+abean.getA_fname()+"<br><br>");
out.println(data+"<br><br>");
%>
<a href="addproduct.html">Add Product</a><br><br>
<a href="view1">View Product</a><br><br>
<a href="logout">Logout</a><br><br>
</h1>
</body>
</html>