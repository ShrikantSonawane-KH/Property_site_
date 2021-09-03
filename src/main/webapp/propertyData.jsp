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

		<%
		String property = request.getParameter("property");
		String user = request.getParameter("user");
		if (user.equals("admin")) {
		%>
		<%@include file="components/adminNav.jsp"%>
		<%
		} else if (user.equals("tenant")) {
		%>
		<%@include file="components/tenantNav.jsp"%>
		<%
		} else {
		%>
		<%@include file="components/RenterNav.jsp"%>
		<%
		}
		%>

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
		int pro_id = Integer.parseInt(request.getParameter("id"));
		%>

		<div>
			<h3>
				<strong>Property Details :</strong>
			</h3>
			<%@include file="components/tables/property.jsp"%>
		</div>

		<div>
			<h3>
				<strong>Property Overview :</strong>
			</h3>
			<%@include file="components/tables/overview.jsp"%>
		</div>

		<div>
			<h3>
				<strong>Property Address :</strong>
			</h3>
			<%@include file="components/tables/address.jsp"%>
		</div>

		<div>
			<h3>
				<strong>Property Description :</strong>
			</h3>
			<%@include file="components/tables/description.jsp"%>
		</div>


		<div style="text-align: center;">
			<button type="button" class="btn btn-secondary btn-lg">
				<a href="buyProperty.jsp?user=<%=user%>&property=<%=property %>" style="text-decoration: none">
					<div style="color: white;">Back</div>
				</a>
			</button>
			<button type="button" class="btn btn-secondary btn-lg">
				<a href="Payment.jsp?id=<%=pro_id %>&user=<%=user%>" style="text-decoration: none">
					<div style="color: white;">Buy</div>
				</a>
			</button>
		</div>
		<br>
		<%@include file="components/footer.jsp"%>
	</div>
</body>
</html>