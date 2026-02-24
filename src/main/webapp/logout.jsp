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
	background: linear-gradient(to right, rgb(255, 128, 0), rgb(255, 177, 100));
	}
 
a{
	text-decoration: none;
	font-size: 40px;
	font-family:sans-serif ;
	color: rgb(128, 255, 255);
	border: 2px solid yellow;
	border-radius: 15px;

}

</style>
<center>
<h1>
			<%
				session.invalidate();
				out.println("<h1>User Loggedout Successfully!!!</h1><br><br>");
			%>
			<div id="s1">
		<a href="AdminLogin.html"  > Admin Login</a><br><br>
			<a href="CustomerLogin.html"> Customer Login</a>
			</div>
		</h1>
</body>
</html>