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

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>



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

			<td><a href="edit.jsp?id=<%=renter.getId()%>"
				class="btn btn-primary">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
				href="delete?id=<%=renter.getId()%>" class="btn btn-danger">Delete</a></td>

		</tr>

		<%
		}
		%>

	</table>













</body>
</html>