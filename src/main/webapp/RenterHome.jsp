<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
   <%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String Renteremail = request.getParameter("useremail");

out.print(Renteremail+"<br>");

Renter.abc="a";

%>

<h3><a href="demo.jsp?renterEmail="+<%= Renteremail %>>buy</a> </h3>
<h3><a href="demo.jsp">rent</a></h3>
<h3><a href="PropertyRegistration.jsp">sell</a></h3>



</body>
</html>