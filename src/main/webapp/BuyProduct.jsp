<%@page import="com.pack1.CustomerBean"%>
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
<body style="background-color: goldenrod;color: rgb(0, 255, 64);font-family:inherit">
<center>
<h1>
<%
CustomerBean cbean=(CustomerBean)session.getAttribute("CustomerBean");
ProductBean pb=(ProductBean)request.getAttribute("pbitem");
out.println("hello "+cbean.getF_name()+"<br><br>");
%>
<form action="cupdate" method="post">
product Code<input type="text" name="pcode" value="<%=pb.getP_code()%>"><br><br>
product name<input type="text" name="pname" value="<%=pb.getP_name()%>"><br><br>
product company<input type="text" name="pcompany" value="<%=pb.getP_company()%>"><br><br>
product price<input type="text" name="pprice" value="<%=pb.getP_price()%>"><br><br>
product quantity<input type="text" name="pqty" value="<%=pb.getP_qty()%>"><br><br>
Required no<input type="text" name="prn"><br><br>
<input type="hidden" name="pcode" value="<%=pb.getP_code()%>">
<input type="submit" value="Buy">
</form>
</h1>
</body>
</html>