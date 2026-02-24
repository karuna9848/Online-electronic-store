<%@page import="com.pack1.CustomerBean"%>
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
		
		background:linear-gradient(to right,rgb(255, 116, 49)   , #FF5E62  );

	}
	h1{
	margin-top:200px
	}
a{
	text-decoration: none;
	border: 2px white solid;
	padding: 10px;
	border-radius: 15px;
	color:white;	
	background-color:black;
}
a:hover{
	background-color:white;
	border: 2px black solid;
	padding: 10px;
	border-radius: 15px;
	color:black
}
#one{
		padding: 10px;
		display: flex;
		align-items: center;
		column-gap:15px;
		justify-content: center;
		border-radius: 15px;
		
	}
</style>

<body>
<center>
		<h1>
			<%	
			CustomerBean cb=(CustomerBean)session.getAttribute("CustomerBean");
			out.println("Hello Ms/Ms "+cb.getF_name()+"<br><br>");
			
				String data=(String)request.getAttribute("msg");
				out.println(data+"<br><br>");
				out.println("Your Order Placed Successfully!!!<br><br>");
			%>
			
			<div id="one">
			<a href="cview">View Products</a><br><br>
			<a href="logout">Logout</a><br><br>
			</div>
		</h1>

</body>
</html> 