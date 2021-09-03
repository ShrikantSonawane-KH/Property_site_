<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="property.dao.RenterDao"%>
<%@ page import="property.dao.RenterDaoImpl"%>
<%@ page import="property.pojo.Renter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>overview table</title>
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
	<div class="container">
		<h1>
			<strong>Please Confirm Your Transaction Details</strong>
		</h1>

		<table class="table table-success table-striped table-hover">


			<%
			String user = request.getParameter("user");
			RenterDao renterdao = new RenterDaoImpl();

			int id = Integer.parseInt(request.getParameter("id"));

			Renter r = renterdao.showById(id);
			%>


			<thead>
				<tr>

					<th scope="col">Name</th>
					<th scope="col">City</th>
					<th scope="col">Area</th>
					<th scope="col">Build Area</th>
					<th scope="col">Property Type</th>
					<th scope="col">Category</th>

				</tr>
			</thead>
			<tbody>
				<tr>

					<td><%=r.getProperty().getName()%></td>
					<td><%=r.getProperty().getAddress().getCity()%></td>
					<td><%=r.getProperty().getAddress().getArea()%></td>
					<td><%=r.getProperty().getDescription().getOverview().getBuild_area()%></td>
					<td><%=r.getProperty().getPro_type()%></td>
					<td><%=r.getProperty().getCategory()%></td>

				</tr>
			</tbody>
		</table>


		<div class="container">
			<div class="row row-cols-2">
				<div class="col">
					<h1>Total Amount to be Paid :</h1>
					<h5>
						<%
						float priceWithProfit = r.getProperty().getPrice() * 0.05f;
						float totalAmount = r.getProperty().getPrice() + priceWithProfit;
						float bookAmount = totalAmount * 0.2f;
						%>
						<mark>
							Rs.<%=totalAmount%></mark>
					</h5>


				</div>
				<div class="col">
					<h1>Booking Amount to be Paid :</h1>
					<h5>
						<mark>
							Rs.<%=bookAmount%></mark>
					</h5>

				</div>

			</div>
		</div>

		<br> <br> <br>

		<div style="text-align: center;">
			<button type="button" class="btn btn-secondary btn-lg">
				<a href="propertyData.jsp?id=<%=id %>&user=<%=user%>" style="text-decoration: none">
					<div style="color: white;">Back</div>
				</a>
			</button>
			<button type="button" class="btn btn-secondary btn-lg">
				<a href="##" style="text-decoration: none">
					<div style="color: white;">pay</div>
				</a>
			</button>
		</div>
		<br>
	</div>









</body>
</html>