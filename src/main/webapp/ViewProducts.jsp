<%@page import="com.pack1.CustomerBean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style="background-color: goldenrod;color: rgb(0, 255, 64);font-family:inherit">
<center>
<h1>
<%
CustomerBean sb=(CustomerBean)application.getAttribute("CustomerBean");
String sn=(String)request.getAttribute("cname");
out.println("this session belongs to "+sn+"<br><br>");
String pwd=sb.getP_word();
String confpwd=pwd.substring(0,1)+"*********"+pwd.substring(pwd.length()-1);
out.println(sb.getF_name()+" "+confpwd+" "+sb.getC_mid()+"<br><br>");
%>
<a href="buy" style="color:green";>Buy Products</a><br><br>
<a href="logout" style="color:green";>Logout</a><br><br>
</h1>
</body>
</html>