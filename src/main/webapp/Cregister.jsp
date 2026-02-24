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
<%
String data=(String)request.getAttribute("msg");
out.println(data);
%>
<jsp:include page="CustomerLogin.html"></jsp:include>
</body>
</html>