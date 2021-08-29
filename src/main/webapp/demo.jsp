<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="property.dao.RenterDao"%>
<%@ page import="property.dao.RenterDaoImpl"%>
<%@ page import="java.util.List"%>
<%@ page import="property.pojo.Renter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<%@include file="components/common_css_js.jsp"%>
</head>
<body>

	<%@include file="components/navbar.jsp"%>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-3"> <strong>Category </strong>   </div>
			<div class="col-sm-9">
				<div class="row">
					<div class="col-8 col-sm-6">
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
								aria-expanded="true"> Property Type </a>

							<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="demo.jsp?type_category=all">all</a></li>
								<li><a class="dropdown-item" href="demo.jsp?type_category=apartment">Apartment</a></li>
								<li><a class="dropdown-item" href="demo.jsp?type_category=villa">Villa</a></li>
								<li><a class="dropdown-item" href="demo.jsp?type_category=indfloor">Independent
										Floor</a></li>
								<li><a class="dropdown-item" href="demo.jsp?type_category=penthouse">Penthouse</a></li>
								<li><a class="dropdown-item" href="demo.jsp?type_category=bunglow">Bunglow</a></li>
							</ul>
						</div>

					</div>
					<div class="col-4 col-sm-6">
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
								aria-expanded="true"> Category </a>

							<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item" href="demo.jsp?cat_category=all">all</a></li>
								<li><a class="dropdown-item" href="demo.jsp?cat_category=1rk">1RK</a></li>
								<li><a class="dropdown-item" href="demo.jsp?cat_category=1bhk">1BHK</a></li>
								<li><a class="dropdown-item" href="demo.jsp?cat_category=2bhk">2BHK</a></li>
								<li><a class="dropdown-item" href="demo.jsp?cat_category=3bhk">3BHK</a></li>
								<li><a class="dropdown-item" href="demo.jsp?cat_category=4bhk">4BHK</a></li>
								<li><a class="dropdown-item" href="demo.jsp?cat_category=5bhk">5BHK</a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row mt-3 mx-2">

			<%
			String type_cat = request.getParameter("type_category");
			String cat_cat = request.getParameter("cat_category");
			
			RenterDao renterdao = new RenterDaoImpl();
			List<Renter> list = null;
 
		 	if (type_cat == null || type_cat.trim().equals("all")) {
				list = renterdao.showAll();

			} else {

				list = renterdao.getAllPropertiesByType(type_cat);

			} 
		
			/* 
			if (cat_cat == null || cat_cat.trim().equals("all")) {
				list = renterdao.showAll();

			} else {

				list = renterdao.getAllPropertiesByCat(cat_cat);

			} */
			
			%>
			
			<!--show products-->
			<div class="col-md-10">

				<!--row-->
				<div class="row mt-4">

					<!--col:12-->
					<div class="col-md-12">

						<div class="card-columns">

							<%
							for (Renter r : list) {
							%>

							<!--product card-->
							<div class="card product-card">

								<div class="container text-center">
									<img
										src="img/products/<%=r.getProperty().getImage().getImage()%>"
										style="max-height: 200px; max-width: 100%; width: auto;"
										class="card-img-top m-2" alt="...">

								</div>

								<div class="card-body">

									<h5 class="card-title">  <strong><%=r.getProperty().getName()%></strong>  </h5>
									<h6 class="card-title"> <mark>Rs.<%=r.getProperty().getPrice() %></mark>  </h6>
									<h6 class="card-title">For : <%=r.getProperty().getPro_for()%> </h6>
									<%-- <h6 class="card-title">For : <%=r.getProperty().getPro_for()%> </h6> --%>
									<h6 class="card-title">id : <%=r.getId() %> </h6>
									
									<button type="button" class="btn btn-info" > <a href="propertyData.jsp?id=<%=r.getId() %>" style="color:white" > <strong>click for more</strong> </a> </button>
									
								</div>
							</div>
							<%
							}
							%>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="components/footer.jsp"%>
	
</body>
</html>