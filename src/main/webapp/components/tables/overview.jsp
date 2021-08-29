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
</head>
<body>

<table class="table table-success table-striped table-hover" >

<%
	RenterDao renterdao1 = new RenterDaoImpl();

	int id1 = Integer.parseInt(request.getParameter("id"));

	Renter r1 = renterdao1.showById(id1);
%>
		<thead>
			<tr>
				<th scope="col">Sr. No.</th>
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
				<td>1</td>
				<td><%=r1.getProperty().getDescription().getOverview().getBuild_area() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getFloor_no() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getAvailable_from() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getBathroom() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getBalcony() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getSecurity() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getMaintenance() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getPro_age() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getParking() %></td>
				<td><%=r1.getProperty().getDescription().getOverview().getEntrance_facing() %></td>
			</tr>
		</tbody>
	</table>

</body>
</html>