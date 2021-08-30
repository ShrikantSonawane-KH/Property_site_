<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="property.dao.RenterDao"%>
<%@ page import="property.dao.RenterDaoImpl"%>
<%@ page import="property.pojo.Renter"%>
<%@ page import="java.util.List"%>
<%@ page import="property.dao.UserDao"%>
<%@ page import="property.dao.UserDaoImpl"%>
<%@ page import="property.pojo.User"%>
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

	<%@include file="components/navbar.jsp"%>

<!-- User Table -->

	<%
	out.print("<br/>");
	out.print("<div style= text-align:center; >");
	String message = request.getParameter("message");
	if (message != null && !message.isEmpty()) {

		out.print("<h6 style= color:red; >" + message + "</h6>");
	}
	out.print("</div>");
	%>

	<h3> <strong>User Data :</strong>  </h3>

	<table class="table table-success table-striped table-hover">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Email </th>
			<th>Role</th>
			<th>@@########@@</th>
			<th>@@########@@</th>
			<th>@@########@@</th>
			<th>@@########@@</th>
		
			<th>Action</th>
		</tr>
		<%
		
		UserDao userdao = new UserDaoImpl();

		List<User> uList=userdao.showAll();

		for (User user : uList) {
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getName()%></td>
			<td><%=user.getMobile()%></td>
			<td><%=user.getUsername()%></td>
			<td><%=user.getRole()%></td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
			<td>-</td>
		
		
			

			<td>
				<a href="deleteUserById?id=<%=user.getId()%>" class="btn btn-danger">Delete</a></td>

		</tr>
		<%
		}
		%>
	</table>
	<br>	

<!-- Renter Table -->

	<h3> <strong>Property Data :</strong> </h3>
	
	<table class="table table-success table-striped table-hover">
		<tr>
			<th>Property Id</th>
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

		List<Renter> rlist = renterdao.showAll();

		for (Renter renter : rlist) {
		%>
		<tr>
			<td><%=renter.getId()%></td>
			<td><%=renter.getProperty().getName()%></td>
			<td><%=renter.getProperty().getCategory()%></td>
			<td><%=renter.getProperty().getPro_type()%></td>
			<td><%=renter.getProperty().getPrice()%></td>
			<td><%=renter.getProperty().getAddress().getArea()%></td>
			<td><%=renter.getProperty().getAddress().getCity()%></td>
			<td><%=renter.getProperty().getDescription().getOverview().getBuild_area()%></td>
			<td><%=renter.getValidRenterEmail()%></td>

			<td>
				<a href="deletRenterByAdmin?id=<%=renter.getId()%>"
				class="btn btn-danger">Delete</a></td>
		</tr>
		<%
		}
		%>

	</table>
	<br>

	<!-- back button -->

	<div class="d-grid gap-2 col-6 mx-auto">
		<button class="btn btn-primary" type="button">

			<a href="AdminPage.jsp">
				<div style="color: white;">back</div>
			</a>

		</button>

	</div>


</body>
</html>











	



