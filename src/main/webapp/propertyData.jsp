<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="property.dao.RenterDao"%>
<%@ page import="property.dao.RenterDaoImpl"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Special Property Details</title>
<%@include file="components/common_css_js.jsp"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>

<div class="container-fluid">

 <%@include file="components/navbar.jsp"%>
 
 <div>
	<h3> Property Details :  </h3>
	<%@include file="components/tables/property.jsp"%>
</div>
 
<div>
	<h3> Property Overview :  </h3>
	<%@include file="components/tables/overview.jsp"%>
</div>
	
<div>
	<h3> Property Address :  </h3>
	<%@include file="components/tables/address.jsp"%>
</div>

<div>
	<h3> Property Description :  </h3>
	<%@include file="components/tables/description.jsp"%>
</div>

<%@include file="components/footer.jsp"%>
	</div>
</body>
</html>