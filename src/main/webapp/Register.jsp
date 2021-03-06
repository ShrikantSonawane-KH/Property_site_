<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Seller/Renter Registration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	crossorigin="anonymous"></script>

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="index.jsp" class="navbar-brand"> </a>
			</div>

		</nav>
	</header>
	<div style="position: absolute; top: 0px; width: 100%"></div>
	<main
		class="form-signin text-center container h-100 d-flex justify-content-center align-items-center">
		
		<form class="col-md-4" action="Registration_control">

			<h1 class="h3 mb-3 fw-normal">Please Register here</h1>

			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="Enter email... " name="username"> <label
					for="floatingInput">Username </label>
			</div>
			<div class="form-floating mt-2">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password" name="password"> <label
					for="floatingPassword">Password</label>
			</div>
			<h4>Register as</h4>
			<select name="role">
				<option value="renter">Renter</option>
				<option value="tenant">Tenant</option>

			</select>


			</div>

			<button class="w-100 btn btn-lg btn-success" type="submit">Sign
				Up</button>

		</form>
	</main>
	<div style="position: absolute; bottom: 0px; width: 100%"></div>
</body>
</html>
