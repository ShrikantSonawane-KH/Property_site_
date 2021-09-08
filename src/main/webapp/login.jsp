<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Login Page</title>
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



</head>
<body>

	<%@include file="components/loginNav.jsp"%>
	
	
	<div class="bbbootstrap">
		<div class="container">
			<div class=row>
	
	
	<div style="position: absolute; top: 0px; width: 100%"></div>
	<main
		class="form-signin text-center container h-100 d-flex justify-content-center align-items-center">


		<form class="col-md-4" action="login_control" method="get">

			<h1 class="h3 mb-3 fw-normal" style="color:white"><strong>Login here</strong></h1>

			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="email"
					placeholder="Email" name="email" required> <label
					for="floatingInput">Email</label>
			</div>
			<div class="form-floating mt-2">
				<input type="password" class="form-control" id="password"
					placeholder="Password" name="password" required> <label
					for="floatingPassword">Password</label>
			</div>
			<a href="Register.jsp" style="color:black"> <strong>New User?Sign up</strong> </a>
		<br />

			<button class="w-100 btn btn-lg btn-success" type="submit">Sign
				in</button>
			<div style="position: absolute; bottom: 0px; width: 100%"></div>


			<%
			out.print("<br/>");
			out.print("<div style= text-align:center; >");
			String message = request.getParameter("message");
			if (message != null && !message.isEmpty()) {

				out.print("<h5 style= color:blue;text-align:center >" + message + "</h5>");
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
