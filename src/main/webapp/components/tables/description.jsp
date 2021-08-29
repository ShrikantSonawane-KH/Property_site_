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
	RenterDao renterdao3 = new RenterDaoImpl();

	int id3 = Integer.parseInt(request.getParameter("id"));

	Renter r3 = renterdao3.showById(id3);
%>
		<thead>
			<tr>
				<th scope="col">Sr. No.</th>
				<th scope="col">Furnish</th>
				<th scope="col">Property Status</th>
				<th scope="col">Special Highlights</th>
			
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td><%=r3.getProperty().getDescription().getFurnished() %></td>
				<td><%=r3.getProperty().getDescription().getPro_status() %></td>
				<td><%=r3.getProperty().getDescription().getSpecial_highlights()%></td>
		
			</tr>
		</tbody>
	</table>

</body>
</html>