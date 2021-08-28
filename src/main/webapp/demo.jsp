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
</head>
<body>



	<%
	for (Renter c : ) {
	%>


	<a href="demo.jsp?category=<%= %>"
		class="list-group-item list-group-item-action"><%=c.getCategoryTitle()%></a>


	<%
	}
	%>



	<%
	String catPrice = request.getParameter("category");
	
	
	RenterDao renterdao = new RenterDaoImpl();
	List<Renter> list = null;
	
	
    if (cat == null || cat.trim().equals("all")) {
    	list = renterdao.showAll();

    } else {

      
        list = getAllPropertiesByCategory(catPrice);

    }

    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
    List<Category> clist = cdao.getCategories();

	
	
	
	
	
	%>


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

							<h5 class="card-title"><%=r.getProperty().getName()%></h5>



						</div>


					</div>



					<%
					}
					%>


				</div>



			</div>

		</div>



	</div>


</body>
</html>