<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="property.dao.RenterDao"%>
<%@ page import="property.dao.RenterDaoImpl"%>
<%@ page import="property.pojo.Renter"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Property by Renter</title>

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

	<%@include file="components/RenterNav.jsp"%>
	
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("username") == null) {
		request.setAttribute("Error", "Session has ended.  Please login.");
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	%>
	
	

	<%
	out.print("<br/>");
	out.print("<div style= text-align:center; >");
	String message = request.getParameter("message");
	if (message != null && !message.isEmpty()) {

		out.print("<h6 style= color:red; >" + message + "</h6>");
	}
	out.print("</div>");
	%>

	<br>
	<table class="table table-success table-striped table-hover">
		<tr>
			<th>Property Name</th>
			<th>Property Category</th>
			<th>Property Type</th>
			<th>Price</th>
			<th>Area</th>
			<th>City</th>
			<th>Build Area</th>
			<th>Email</th>
			<th>Action</th>
		</tr>

		<%
		/* 	Renter renter = new Renter(); */

		String emailID = Renter.getRenterEmail();

		RenterDao renterdao = new RenterDaoImpl();

		List<Renter> rlist = renterdao.getPropertyByRenter(emailID);

		for (Renter renter : rlist) {
		%>
		<tr>
			<td><%=renter.getProperty().getName()%></td>
			<td><%=renter.getProperty().getCategory()%></td>
			<td><%=renter.getProperty().getPro_type()%></td>
			<td><%=renter.getProperty().getPrice()%></td>
			<td><%=renter.getProperty().getAddress().getArea()%></td>
			<td><%=renter.getProperty().getAddress().getCity()%></td>
			<td><%=renter.getProperty().getDescription().getOverview().getBuild_area()%></td>
			<td><%=renter.getValidRenterEmail()%></td>

			<td><a href="EditProperty.jsp?id=<%=renter.getId()%>"
				class="btn btn-primary">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
				href="deletRenterController?id=<%=renter.getId()%>"
				class="btn btn-danger">Delete</a></td>
		</tr>
		<%
		}
		%>

	</table>
	<br>

	<!-- back button -->

	<div class="d-grid gap-2 col-6 mx-auto">
		<button class="btn btn-secondary" type="button">

			<a href="RenterHome.jsp?useremail=<%=emailID %>" style=" text-decoration:none;">
				<div style="color: white;">back</div>
			</a>

		</button>

	</div>


</body>
</html>