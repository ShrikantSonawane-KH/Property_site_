<%@page import="property.pojo.Renter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Residena.com</title>
</head>
<body>
	<%--  <%@include file="components/navbar.jsp"%>  --%>
	<%
	String useremail = Renter.getRenterEmail();
	%>

	<!-- HEADER -->
	<div class="row">
		<nav class="navbar navbar-expand-lg navbar-dark bg-secondary m-0">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Residena.com</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
					aria-controls="navbarNavDropdown" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">

						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="RenterHome.jsp?useremail=<%=useremail%>">Home</a></li>

						<li class="nav-item"><a class="nav-link" href="#footer">About</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="#footer">Contact</a>


						</li>

						<li class="nav-item"><a class="nav-link" href="#review">Review</a>
						</li>

							<li class="nav-item"><a class="nav-link" href="logOutController" id="login">Logout</a>
						</li>

					</ul>

				</div>
				
		
			</div>
		</nav>

	</div>
	<!-- HEADER END -->

</body>
</html>