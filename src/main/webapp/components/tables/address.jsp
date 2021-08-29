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
	RenterDao renterdao2 = new RenterDaoImpl();

	int id2 = Integer.parseInt(request.getParameter("id"));

	Renter r2 = renterdao2.showById(id2);
%>

		<thead>
			<tr>
				<th scope="col">Sr. No.</th>
				<th scope="col">Area</th>
				<th scope="col">Lane</th>
				<th scope="col">Landmark</th>
				<th scope="col">City</th>
				<th scope="col">State</th>
				<th scope="col">Country</th>
				<th scope="col">Pin Code</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td><%=r2.getProperty().getAddress().getArea() %></td>
				<td><%=r2.getProperty().getAddress().getLane() %></td>
				<td><%=r2.getProperty().getAddress().getLandmark() %></td>
				<td><%=r2.getProperty().getAddress().getCity() %></td>
				<td><%=r2.getProperty().getAddress().getState() %></td>
				<td><%=r2.getProperty().getAddress().getCountry() %></td>
				<td><%=r2.getProperty().getAddress().getPincode() %></td>	
			</tr>
		</tbody>
	</table>

</body>
</html>