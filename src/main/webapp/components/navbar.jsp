<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>nav</title>
</head>
<body>
<%--  <%@include file="components/navbar.jsp"%>  --%>


<!-- HEADER -->
	<div class="row">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
							aria-current="page" href="event.html">Home</a></li>

						<li class="nav-item"><a class="nav-link" href="about.html">About</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
						</li>
					
					</ul>


				</div>
				<!--Login Button-->
				<a href="login1.html" class="btn btn-danger" role="button">logout</a>

			</div>
		</nav>

	</div> <br>
	<!-- HEADER END -->

</body>
</html>