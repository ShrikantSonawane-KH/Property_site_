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

	<table class="table table-success table-striped table-hover">


		<%
		RenterDao renterdao4 = new RenterDaoImpl();

		int id4 = Integer.parseInt(request.getParameter("id"));

		Renter r4 = renterdao4.showById(id4);
		%>
		<%
		float priceWithProfit = r4.getProperty().getPrice() * 0.05f;
		%>


		<thead>
			<tr>
				<th scope="col">Sr. No.</th>
				<th scope="col">Name</th>
				<th scope="col">Property for</th>
				<th scope="col">Price</th>
				<th scope="col">Deposite</th>
				<th scope="col">Property Type</th>
				<th scope="col">Category</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td><%=r4.getProperty().getName()%></td>
				<td><%=r4.getProperty().getPro_for()%></td>
				<td><%=r4.getProperty().getPrice() + priceWithProfit%></td>
				<td><%=r4.getProperty().getDeposite()%></td>
				<td><%=r4.getProperty().getPro_type()%></td>
				<td><%=r4.getProperty().getCategory()%></td>

			</tr>
		</tbody>
	</table>

</body>
</html>