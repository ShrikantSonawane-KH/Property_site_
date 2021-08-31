<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="property.dao.UserDao"%>
<%@ page import="property.dao.UserDaoImpl"%>
<%@ page import="property.pojo.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@include file="components/navbar.jsp"%>


	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>


	<%
	UserDao userdao = new UserDaoImpl();
	int id = Integer.parseInt(request.getParameter("id"));

	User user = userdao.showById(id);
	%>

	<div style="position: absolute; top: 0px; width: 100%"></div>
	<main
		class="form-signin text-center container h-100 d-flex justify-content-center align-items-center">

		<form class="col-md-4" action="##">

			<h1 class="h3 mb-3 fw-normal">Edit User</h1>

			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingPassword"
					placeholder="name" name="name" value="<%=user.getName()%>"
					required> <label for="floatingPassword">Name</label>
			</div>


			<div class="form-floating mt-2">
				<input type="text" class="form-control" id="floatingPassword"
					placeholder="Mobile" name="mobile" required> <label
					for="floatingPassword">Mobile</label>
			</div>


			<div>
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

	<%@include file="components/footer.jsp"%>


</body>
</html>