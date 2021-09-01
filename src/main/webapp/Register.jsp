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

<style>
body .bbbootstrap {
    background-image: url('image/login2.jpg') !important;
    background-size: cover;
    padding: 180px 0 30px 0;
    margin-top:0%;
     background-size: 100% 100%;
}
</style> 

<script type="text/javascript" src="registrationValidation.js"></script>
</head>
<body>


	<%@include file="components/indexNav.jsp"%>
	
	<div class="bbbootstrap">
		<div class="container">
			<div class=row>

	<div style="position: absolute; top: 0px; width: 100%"></div>
	<main
		class="form-signin text-center container h-100 d-flex justify-content-center align-items-center">

		<form class="col-md-4" action="Registration_control" onsubmit="return validate()">

			<h1 class="h3 mb-3 fw-normal"style="color:white"><strong>Register here</strong></h1>

			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingName"
					placeholder="name" name="name" > <label
					for="floatingPassword">Name</label>
					<span style="color:red" id="username"></span>
			</div>

			<div class="form-floating mt-2">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="Enter email... " name="username" > <label
					for="floatingInput">Email</label>
					<span style="color:red" id="eid1"></span>
			</div>

			<div class="form-floating mt-2">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password" name="password" > <label
					for="floatingPassword">Password</label>
					<span style="color:red" id="pass1"></span>
			</div>

			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingmobile"
					placeholder="Mobile" name="mobile" > <label
					for="floatingPassword">Mobile</label>
					<span style="color:red" id="mnum"></span>
			</div>


			<div style="color:black">
				<strong>Register as</strong>
			</div>
			<select name="role" style="background-color: #009900;">
				<option value="renter">Renter</option>
				<option value="tenant">Tenant</option>

			</select> <br>

			<button class="w-100 btn btn-lg btn-success" type="submit">Sign
				Up</button>

			<%
			out.print("<br/>");
			out.print("<div style= text-align:center;>");
			String message = request.getParameter("message");
			if (message != null && !message.isEmpty()) {

				out.print("<h5 style= color:red; >" + message + "</h5>");
			}
			out.print("</div>");
			%>

		</form>
	</main>
</div>
</div>
</div>
	<%@include file="components/footer.jsp"%>
	

</body>
</html>
