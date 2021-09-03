<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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


	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>

	<%
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
	String property = request.getParameter("property");
	String type_cat = request.getParameter("type_category");

	RenterDao renterdao = new RenterDaoImpl();
	List<Renter> list = null;

	if (type_cat == null || type_cat.trim().equals("all")) {
		list = renterdao.getOnlyBuyProperty(property);

	} else {

		list = renterdao.getAllPropertiesByTypeAndSell(property, type_cat);
		/* if(list==null){
			out.print("No property found..!");
		} */
	}
	%>


	


	<div class="container" style="margin-top:2px">
		<div class="row row-cols-auto">
			<div class="col">
				<div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-bs-toggle="dropdown"
						aria-expanded="true"> Property Type </a>

					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item"
							href="buyProperty.jsp?type_category=all&property=<%=property%>&user=<%=user%>">all</a></li>
						<li><a class="dropdown-item"
							href="buyProperty.jsp?type_category=apartment&property=<%=property%>&user=<%=user%>">Apartment</a></li>
						<li><a class="dropdown-item"
							href="buyProperty.jsp?type_category=villa&property=<%=property%>&user=<%=user%>">Villa</a></li>
						<li><a class="dropdown-item"
							href="buyProperty.jsp?type_category=indfloor&property=<%=property%>&user=<%=user%>">Independent
								Floor</a></li>
						<li><a class="dropdown-item"
							href="buyProperty.jsp?type_category=penthouse&property=<%=property%>&user=<%=user%>">Penthouse</a></li>
						<li><a class="dropdown-item"
							href="buyProperty.jsp?type_category=bunglow&property=<%=property%>&user=<%=user%>">Bunglow</a></li>
					</ul>
				</div>
			</div>
			<div class="col">
				<div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-bs-toggle="dropdown"
						aria-expanded="true"> Category </a>

					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=all&property=<%=property%>&user=<%=user%>">all</a></li>
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=1rk&property=<%=property%>&user=<%=user%>">1RK</a></li>
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=1bhk&property=<%=property%>&user=<%=user%>">1BHK</a></li>
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=2bhk&property=<%=property%>&user=<%=user%>">2BHK</a></li>
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=3bhk&property=<%=property%>&user=<%=user%>">3BHK</a></li>
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=4bhk&property=<%=property%>&user=<%=user%>">4BHK</a></li>
						<li><a class="dropdown-item"
							href="buyPropertyOnsell.jsp?cat_category=5bhk&property=<%=property%>&user=<%=user%>">5BHK</a></li>
					</ul>
				</div>
			</div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="col"></div>
	
			
		</div>
	</div>



	<div class="container-fluid">
		<div class="row mt-3 mx-2">



			<!--show products-->
			<div class="col-md-10" style="padding-left: 20%;">

				<!--row-->
				<div class="row mt-4">

					<!--col:12-->
					<div class="col-md-12 ">

						<div class="card-columns">

							<%
							for (Renter r : list) {
							%>

							<!--proprty card-->
							<div class="card product-card">

								<div class="container text-center" style="padding-right: 10%;">
									<img
										src="img/products/<%=r.getProperty().getImage().getImage()%>"
										style="max-height: 200px; max-width: 100%; width: auto;"
										class="card-img-top m-2" alt="...">
								</div>

								<div class="card-body">

									<h5 class="card-title">
										<strong><%=r.getProperty().getName()%></strong>
									</h5>
									<h6 class="card-title">
									
										<%float priceWithProfit= r.getProperty().getPrice()*0.05f; %>
										
										<mark> Rs.<%=r.getProperty().getPrice() + priceWithProfit%></mark>
									</h6>
									<h6 class="card-title">
										For :
										<%=r.getProperty().getPro_for()%>
									</h6>
								

									<button type="button" class="btn btn-info">
										<a href="propertyData.jsp?id=<%=r.getId()%>&user=<%=user%>&property=<%=property %>"
											style="color: white"> <strong>click for more</strong>
										</a>
									</button>

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