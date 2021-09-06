<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<%@ page import="property.pojo.Renter" %> 
<!DOCTYPE html>

<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	
	
<link rel="stylesheet" href="NewFile.css">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
	rel="stylesheet" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">



<!-- Bootstrap CSS -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js">
	
</script>
<link rel="stylesheet" type="text/css" href="/css/result-light.css">

<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- JavaScript for adding 
     slider for multiple images
     shown at once-->
<script type="text/javascript">
	$(window).load(
			function() {
				$(".carousel .item").each(
						function() {
							var i = $(this).next();
							i.length || (i = $(this).siblings(":first")), i
									.children(":first-child").clone().appendTo(
											$(this));

							for (var n = 0; n < 4; n++)
								(i = i.next()).length
										|| (i = $(this).siblings(":first")), i
										.children(":first-child").clone()
										.appendTo($(this))
						})
			});
</script>

</head>

<body>

<%-- <%
String Renteremail = request.getParameter("useremail");

/* out.print(Renteremail+"<br>"); */

Renter.setRenterEmail(Renteremail);
%>
 --%>

	<%@include file="components/tenantNav.jsp"%>


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


	<div class="bbbootstrap">
		<div class="container">
			<div class=row>
				<form>
	
					<br>		
					<div>


<h1 id="xyz" style="color:white; margin-left:20%"> <strong>Welcome To Residena</strong> </h1>
<h3 id="demo" style="color:white; margin-left:35%"> <strong> </strong> </h3>

<br>


<script>
function test(city) {
	  document.getElementById("demo").innerHTML = "Properties  in"+" "+city;

	  }

function myFunction() {
  document.getElementById("demo").innerHTML = "Properties For Buy";

  }
  function myFunction1() {
  document.getElementById("demo").innerHTML = "Properties For Rent";
  }
  function myFunction2() {
  document.getElementById("demo").innerHTML = "Properties For Sell";
  }
 

</script>


<!-- ---------------------------------------------------Header---------------------------------------------------------- -->
<div class="bbbootstrap1">

						<div class="row">
							<div class="col-2">
								<a href="buyProperty.jsp?user=tenant&property=sell"  button onclick="myFunction()"class="btn btn-secondary btn-sm" role="button"> <strong>Buy</strong> </a>
							</div>
							<div class="col-2">
								<a href="buyProperty.jsp?user=tenant&property=rent" button onclick="myFunction1()" class="btn btn-secondary btn-sm" role="button"><strong>Rent</strong></a>
							</div>
							<div class="col-2">
								<a href="TenantHome.jsp" button onclick="myFunction2()" class="btn btn-secondary btn-sm" role="button"><strong>Sell</strong></a>
							</div>
							<div class="col-2">
								<a href="TenantHome.jsp" class="btn btn-secondary btn-sm" role="button"><strong>Administration</strong></a>
							</div>
						</div> <br>
						<div class="row">
							<div class="col-2">

								<div class="dropdown show"   >
									<a class="btn btn-secondary dropdown-toggle" href="#"
										role="button" id="dropdownMenuLink" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> <strong>City</strong></a>
									
									<script>var a="mumbai"
												var b="pune"
													var c="nashik"
											</script>
								
									<div class="dropdown-menu" aria-labelledby="dropdownMenuLink" >
										<a class="dropdown-item" value="Mumbai" href="TenantHome.jsp?city=Mumbai&id=#map"  onclick='test(a)'>Mumbai</a> 
										<a class="dropdown-item" value="Pune" href="TenantHome.jsp?city=Pune&id=#map" onclick='test(b)'>Pune</a> 
										<a class="dropdown-item" value="Nashik" href="TenantHome.jsp?city=Nashik&id=#map" onclick='test(c)'>Nashik</a>
									</div>
								</div>

							</div>
						<form action="index.jsp?id=#map">
								
								<div class="col-10">
									<div class="form-inline my-2 my-lg-0">
										<input class="form-control mr-lg-10" type="search"
											placeholder="Search" aria-label="Search" class="largesearch" name="city">
										<button class="btn btn-secondary my-2 my-sm-0" type="submit"> <strong>Search</strong> </button>
									</div>
								</div>
								
								</form>
						</div>

						</div>
						
					</div>
				</form>
			</div>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>
	</div>
	<br>



<!-- ------------------------------------------------Cards-------------------------- -->

	<div class="container">
		<div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
			<div class="col-sm-4">
				<div class="card box-shadow">

					<img src="image/15.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><strong>VILLA</strong></h5>
						<p class="card-text">The style of Villa  is one of  features of the architecture 
						of the Gallura. Villa is reside in Goa.
							</p>

					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card box-shadow">
					<img src="image/2.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title "><strong>VILLA</strong></h5>
						<p class="card-text">This is most beautiful Villa in Mumbai. Available for rent.</p>

					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card box-shadow">
					<img src="image/6.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><strong>APARTMENT</strong></h5>
						<p class="card-text">This is most beautiful apartment in Pune which have 2 bedrooms with balcony.</p>

					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card box-shadow">
					<img src="image/9.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><strong>VILLA</strong></h5>
						<p class="card-text">This villa is reside Nashik.this villa have swimming pool with beautiful garden </p>

					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card box-shadow">
					<img src="image/14.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><strong>BEUTIFUL VILLA</strong></h5>
						<p class="card-text">Premium private villa is located on the top of the mountain. 
                                  Villa has air conditioning and seating area
                          </p>

					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card box-shadow">
					<img src="image/17.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><strong>APARTMENT</strong></h5>
						<p class="card-text">This is apartment available in kharghar with 3 bedrooms.</p>

					</div>
				</div>
			</div>
			
			<br> <br>
		</div>
	</div>
	
	<%
		String mapCity= request.getParameter("city");
		//System.out.println(mapCity);
	%>
	<h1 style="text-align:center;" id="map">  <strong>Search for Top Localities</strong> </h1><br>
	
	<!------------------------Google map------------------------------------------------->
	<div id="map-container-google-3" class="z-depth-1-half map-container-3">
		<iframe
			src="https://maps.google.com/maps?q=<%=mapCity %>&t=k&z=13&ie=UTF8&iwloc=&output=embed"
			frameborder="0" style="border: 0" allowfullscreen></iframe>
	</div>




<!-- ----------------------------------Review----------------------------------- -->

<!-- Post Slider -->
		<div class="post-slider" >
			<h1 class="slider-title " id="review"><strong>Review</strong></h1>
			<i class="fas fa-chevron-left prev"></i> <i
				class="fas fa-chevron-right next"></i>

			<div class="post-wrapper">

				<div class="post">
					 <img src="image/51.jpg" alt="" class="slider-image"> 
					<div class="post-info">
						
						<h6> I was on house hunt since a long time and because of Residena.com that search
						 came to end. With amazing house options they also provided us with the movers packers service and an 
						 option for online rent agreement.</h6> 

 				<i class="far fa-calendar"> June 10, 2021</i>
					</div>
				</div>

				<div class="post">
					<img src="image/57.jpg" alt="" class="slider-image">
					<div class="post-info">
						
						<h6>A very well managed site with great options for rented accommodation , with full information about property 
						and real time pictures of the property .
						The website content is also managed well, even my father used it easily</h6>
							<i class="far fa-calendar"> July 23, 2021</i>
					</div>
				</div>

				<div class="post">
					 <img src="image/34.jpg" alt="" class="slider-image"> 
					<div class="post-info">
						
							
					<h6>Residena.com is one of the best service providers for those who are looking for rented accommodation,
					 I rented my place with their help. Mr. Alok sharma helped me im getting a great solution.Residena makes our life easy.
					</h6> 
  
							<i class="far fa-calendar"> May 8, 2021</i>
					</div>
				</div>

				<div class="post">
					 <img src="image/55.jpg" alt="" class="slider-image"> 
					<div class="post-info">
						
						<h6>I listed my property on Residena.com and within a few months my property was filled with tenants. I purchased a paid package and Mr. Ashok Fitniss helped me alot while getting the tenants. Overall it was a satisfying experience</h6>  
						<i class="far fa-calendar"> Mar 10, 2021</i>
					</div>
				</div>

				<div class="post">
				 	<img src="image/54.jpg" alt="" class="slider-image"> 
					<div class="post-info">
						
						<h6> Looking for an accomodation for myself landed me to this amazing website, where is found many renting options and that too in my budget. Amazing renting options of residena  gives new a facility to smooth search.</h6>

						 <i class="far fa-calendar"> Mar 8, 2021</i>
					</div>
				</div>
			</div>
		</div>
		<!-- JQuery -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

		<!-- Slick Carousel -->
		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

		<!-- Custom Script -->
		<script src="slider.js"></script>

<%@include file="components/footer.jsp"%>

</body>
</html>


