<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="property.pojo.Renter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>overview table</title>
</head>
<body>

<table class="table table-success table-striped table-hover" >

<% Renter r = new Renter();  %>


		<thead>
			<tr>
				<th scope="col">Build Area</th>
				<th scope="col">Floor Number</th>
				<th scope="col">Available from</th>
				<th scope="col">Bathroom</th>
				<th scope="col">Balcony</th>
				<th scope="col">Security</th>
				<th scope="col">Maintenance</th>
				<th scope="col">Property Age</th>
				<th scope="col">Parking</th>
				<th scope="col">Entrance Face</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><%=r.getProperty().getDescription().getOverview().getBuild_area() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getFloor_no() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getAvailable_from() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getBathroom() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getBalcony() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getSecurity() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getMaintenance() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getPro_age() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getParking() %></td>
				<td><%=r.getProperty().getDescription().getOverview().getEntrance_facing() %></td>
			</tr>
		</tbody>
	</table>

</body>
</html>