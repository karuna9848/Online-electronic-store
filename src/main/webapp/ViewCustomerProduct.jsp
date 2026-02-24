<%@page import="com.pack1.CustomerBean"%>
<%@page import="java.util.Iterator"%>
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
<body  style="background-color: goldenrod;color: rgb(0, 255, 64);font-family:inherit">
<center>
<h1>
<%
CustomerBean cbean=(CustomerBean)session.getAttribute("CustomerBean");
 ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductList");
 out.println("<u>hello "+cbean.getF_name()+"</u><br><br>");
 if(al.size()==0)
 {
	 out.println("product inventory is empty");
 }
 else
 {
	 Iterator<ProductBean> i=al.iterator();
	 while(i.hasNext())
	 {
		 ProductBean pb=i.next();
		 out.println(pb.getP_code()+" "+pb.getP_name()+" "+pb.getP_company()+" "+pb.getP_price()+" "+pb.getP_qty()+
				 "<a href='buy?pcode="+pb.getP_code()+"'> Buy</a>"+"<br><br>");
	 }
		 
		 
 }
%>
</h1>
</body>
</html>