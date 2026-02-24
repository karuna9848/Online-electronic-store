  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	body{
	background: linear-gradient(to right, rgb(255, 128, 0), rgb(255, 128, 0));
	}


</style>
<body>
<center><h1>
<%
String msg=(String)request.getAttribute("msg");
//out.println(msg);//for continue
//response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);//not continue ended
//response.sendError(405,msg);
%>
<%=msg %>

</h1>
<jsp:include page="CustomerRegoster.html"></jsp:include>
</body>
</html>