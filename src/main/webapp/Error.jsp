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
		h1{
	margin-top:200px
	}
	a{
	text-decoration: none;
	border: 2px white solid;
	padding: 8px;
	border-radius: 10px;
	color:white;	
	background-color:rgb(0, 255, 255);
}
a:hover{
	background-color:rgb(255, 128, 255);
	border: 2px black solid;
	padding: 8px;
	border-radius: 10px;
	color:rgb(255, 0, 128);
	
}
#div1{
		padding: 10px;
	//	display: flex;
		align-items: center;
		column-gap:10px;
		justify-content: center;
		border-radius: 10px;
		
	}

</style>
<body style="background-color: goldenrod;color: rgb(0, 255, 64);font-family:inherit">
<center><h1>
<%
String msg=(String)request.getAttribute("msg");
//out.println(msg);//for continue
//response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);//not continue ended
//response.sendError(405,msg);
%>
<%=msg %>
<br><br>
<div id="div1">
<a href="addproduct.html">Add Product</a><br><br>
<a href="view1">View Product</a><br><br>
<a href="logout">Logout</a><br><br>
</div>
</h1>
</body>
</html>