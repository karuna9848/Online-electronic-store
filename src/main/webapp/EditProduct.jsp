<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
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
		display: flex;
		align-items: center;
		column-gap:10px;
		justify-content: center;
		border-radius: 10px;
		
	}

</style>
<body style="background-color: goldenrod;color: rgb(0, 255, 64);font-family:inherit">
<center>
<h1>
<%
AdminBean abean=(AdminBean)session.getAttribute("AdminBean");
ProductBean pb=(ProductBean)request.getAttribute("pbitem");
out.println("Hello "+abean.getA_fname()+" please edit<br><br>");

%>
<form action="update" method="post">
product Price<input type="text" name="pprice" value="<%=pb.getP_price()%>"><br><br>
product Quantity<input type="text" name="pqty" value="<%=pb.getP_qty()%>"><br><br>
<input type="hidden" name="pcode" value="<%=pb.getP_code()%>">
<input type="submit" value="update">
</form>

</h1>
</body>
</html>