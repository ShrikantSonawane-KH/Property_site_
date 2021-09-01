<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</script>
<script>
	$(document).ready(function() {
		$("#formButton").click(function() {
			$("#ti").toggle();
		});
		$("#formButton1").click(function() {
			$("#fi").toggle();
		});
		$("#formButton2").click(function() {
			$("#gi").toggle();
		});
		$("#formButton3").click(function() {
			$("#mi").toggle();
		});
		$("#formButton4").click(function() {
			$("#csk").toggle();
		});
	});
</script>
<script>
	function fileValidation() {
		var fileInput = document.getElementById('file');
		var filePath = fileInput.value;
		var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
		if (!allowedExtensions.exec(filePath)) {
			alert('Invalid file type');
			fileInput.value = '';
			return false;
		} else {
			if (fileInput.files && fileInput.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					document.getElementById('imagePreview').innerHTML = '<img src="' + e.target.result
                            + '"/>';
				};
				reader.readAsDataURL(fileInput.files[0]);
			}
		}
	}
</script>

<Style>
body {
	background-image: url(bg.jpg);
	width: fit-content;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

#h1 {
	color: royalblue;
	font-family: monton;
}

label {
	font-weight: bold;
	color: black;
	font-family: monton;
}

span {
	color: red;
}
</Style>
</head>
<div><%@include file="components/RenterNav.jsp"%></div>

<br>


	<div class="d-grid gap-2 col-6 mx-auto">
		<button class="btn btn-secondary" type="button">

			<a href="showPropertyByRenter.jsp" style=" text-decoration:none;">
				<div style="color: white;">Your Property</div> 
			</a>

		</button>

	</div>

<br>



<body
	style="background-image: url(bank4.jpg); width: 100%; height: auto;">
	
	
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
	
	

	<div
		class=" d-flex justify-content-center align-items-center container-fluid">

		<div class="card      w-50 justify-items-center align-items-center ;">
			<h1 style="margin: 30px 50px;" id="h1">Please Register Your
				Property here</h1>


			<form action="PropertyRegController" name="myForm"
				onsubmit="return validateForm()" method="post"
				enctype="multipart/form-data">

				<div style="margin: 50px 100px;">
					<button type="button" class="btn btn-dark" id="formButton">Address
						Details</button>

					<t id="ti">
					<div class="form-group" id="namev">
						<label for="name">Name of Property</label> <input type="text"
							class="form-control" name="name" aria-describedby="sicustid"
							placeholder="Enter your Property Name "
							oninvalid="return validateForm()"> <span
							class="formerror"></span>
					</div>
					<div class="form-group" id="areav">
						<label for="area">Area</label> <input type="text"
							class="form-control" name="area" aria-describedby="sicustid"
							placeholder="Enter your Property Area"
							oninvalid="return validateForm()"> <span
							class="formerror"></span>
					</div>
					<div class="form-group" id="lanev">
						<label for="lane">Lane</label> <input type="text"
							class="form-control" name="lane" aria-describedby="sicustid"
							placeholder="Enter Lane " onkeyup="return validateForm()">
						<span class="formerror"></span>
					</div>
					<div class="form-group" id="landmarkv">
						<label for="landmark">Landmark</label> <input type="text"
							class="form-control" name="landmark" aria-describedby="sicustid"
							placeholder="Enter Landmark" oninvalid="return validateForm()">
						<span class="formerror"></span>
					</div>
					<div class="form-group" id="cityv">
						<label for="city">City</label> <select id="city"
							class="form-control" name="city" aria-describedby="sicustid">
							<option value="mumbai">Mumbai</option>
							<option value="pune">Pune</option>
							<option value="nashik">Nashik</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="state">
						<label for="state">State</label> <select id="state"
							class="form-control" name="state" aria-describedby="sicustid">
							<option value="maha">Maharashtra</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="country">
						<label for="country">Country</label> <select id="country"
							class="form-control" name="country" aria-describedby="sicustid">
							<option value="india">India</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="pincodev">
						<label for="pincode">Pincode</label> <input type="number"
							class="form-control" name="pincode" aria-describedby="sicustid"
							placeholder="Enter your pincode" onkeyup="return validateForm()">
						<span class="formerror"></span>
					</div>
					</t>
					<button type="button" class="btn btn-dark" id="formButton1">Property
						Description</button>
					<f id="fi">
					<div class="form-group" id="furnishv">
						<label for="furnish">Furnished</label> <select id="furnish"
							class="form-control" name="furnish" aria-describedby="sicustid">
							<option value="yes">Furnished</option>
							<option value="semi">Semi-Furnished</option>
							<option value="no">Non-Furnished</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="possessionv">
						<label for="status">Property Status</label> <select id="status"
							class="form-control" name="status" aria-describedby="sicustid">
							<option value="possession">Ready Possession</option>
							<option value="construction">Under Construction</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="heighlightv">
						<label for="highlights">Special Heighlight</label> <input
							type="textarea" class="form-control" name="highlights"
							aria-describedby="sicustid"
							placeholder="Enter Special Heighlights"
							onkeyup="return validateForm()"> <span class="formerror"></span>
					</div>
					</f>
					<button type="button" class="btn btn-dark" id="formButton2">Property
						Overview</button>
					<g id="gi">
					<div class="form-group" id="securityv">
						<label for="security">Security</label> <input type="text"
							class="form-control" name="security" aria-describedby="sicustid"
							placeholder="Enter Security Details"
							oninvalid="return validateForm()"> <span
							class="formerror"></span>
					</div>
					<div class="form-group" id="maintenancev">
						<label for="maintenance">Maintenance</label> <input type="number"
							class="form-control" name="maintenance"
							aria-describedby="sicustid"
							placeholder="Enter maintenance charges"
							onkeyup="return validateForm()"> <span class="formerror"></span>
					</div>
					<div class="form-group" id="buildareav">
						<label for="build_area">Build Area</label> <input type="text"
							class="form-control" name="build_area"
							aria-describedby="sicustid"
							placeholder="Enter build area in Sq.feet "
							onkeyup="return validateForm()"> <span class="formerror"></span>
					</div>
					<div class="form-group" id="bathv">
						<label for="NoOfBathroom">No. of Bathrooms</label> <select
							id="NoOfBathroom" class="form-control" name="NoOfBathroom"
							aria-describedby="sicustid">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>

						</select> <span class="formerror"></span>
					</div>

					<div class="form-group" id="balconyv">
						<label for="NoOfBalcony">No. of Balconies</label> <select
							id="NoOfBalcony" class="form-control" name="NoOfBalcony"
							aria-describedby="sicustid">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>

						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="avv">
						<label for="availableFrom">Avaialable from</label> <input
							type="text" class="form-control" name="availableFrom"
							aria-describedby="sicustid" placeholder="Avaialable from"
							onkeyup="return validateForm()"> <span class="formerror"></span>
					</div>
					<div class="form-group" id="floorv">
						<label for="NoOfFloor">Floor Number</label> <select id="NoOfFloor"
							class="form-control" name="NoOfFloor" aria-describedby="sicustid">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="agev">
						<label for="proAge">Age of Property</label> <input type="text"
							class="form-control" name="proAge" aria-describedby="sicustid"
							placeholder="Enter age of propery "
							onkeyup="return validateForm()"> <span class="formerror"></span>
					</div>
					<div class="form-group" id="parkv">
						<label for="parking">Parking</label> <select id="parking"
							class="form-control" name="parking" aria-describedby="sicustid">
							<option value="yes">Yes</option>
							<option value="no">No</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="facingv">
						<label for="entrance">Entrance Facing</label> <select
							id="entrance" class="form-control" name="entrance"
							aria-describedby="sicustid">
							<option value="north">North</option>
							<option value="south">South</option>
							<option value="east">East</option>
							<option value="west">West</option>
						</select> <span class="formerror"></span>
					</div>
					<div class="form-group" id="forv">
						<label for="pro_for">Property For</label> <select id="pro_for"
							class="form-control" name="pro_for" aria-describedby="sicustid">
							<option value="rent">Rent</option>
							<option value="sell">Sell</option>
						</select> <span class="formerror"></span>
					</div>
					</g>
					<br> <br>
					<button type="button" class="btn btn-dark" id="formButton3">Images</button>
					<l id="mi">
					<div class="form-group" id="descv">
						<label for="imagedesc">Image Desc</label> <input type="text"
							class="form-control" name="imagedesc" aria-describedby="sicustid"
							placeholder="Enter description of an Image "
							onkeyup="return validateForm()"> <span class="formerror"></span>
					</div>
					<div class="form-group" id="filev">
						<label for="image">Upload Image</label> <input type="file"
							class="form-control" name="image" id="file"
							aria-describedby="sicustid" multiple
							onchange="return fileValidation()"> <span
							class="formerror"></span>
					</div>
					</l>

					<button type="button" class="btn btn-dark" id="formButton4">Other
						Details</button>
					<u id="csk">
						<div class="form-group" id="pricev">
							<label for="price">Price</label> <input type="number"
								class="form-control" name="price" aria-describedby="sicustid"
								placeholder="Enter price " onkeyup="return validateForm()">
							<span class="formerror"></span>
						</div>
						<div class="form-group" id="depov">
							<label for="deposite">Deposite</label> <input type="number"
								class="form-control" name="deposite" aria-describedby="sicustid"
								placeholder="Enter deposite amout"
								onkeyup="return validateForm()"> <span class="formerror"></span>
						</div>
						<div class="form-group" id="typev">
							<label for="proType">Property Type</label> <select id="proType"
								class="form-control" name="proType" aria-describedby="sicustid">
								<option value="apartment">Apartment</option>
								<option value="villa">Villa</option>
								<option value="indfloor">Independent Floor</option>
								<option value="penthouse">Penthouse</option>
								<option value="bunglow">Bunglow</option>
							</select> <span class="formerror"></span>
						</div>
						<div class="form-group" id="categoryv">
							<label for="proCategory">Category</label> <select
								id="proCategory" class="form-control" name="proCategory"
								aria-describedby="sicustid">
								<option value="1rk">1RK</option>
								<option value="1bhk">1BHK</option>
								<option value="2bhk">2BHK</option>
								<option value="3bhk">3BHK</option>
								<option value="4bhk">4BHK</option>
								<option value="5bhk">5BHK</option>
							</select> <span class="formerror"></span>
						</div>
					</u> <br> <br>


					<div class="d-grid gap-2 col-6 mx-auto">
						<button class="btn btn-secondary" type="submit" value="Submit">Submit</button>
					</div>

			</form>


			<%
			out.print("<br/>");
			out.print("<div style= text-align:left; >");
			String message = request.getParameter("message");
			if (message != null && !message.isEmpty()) {

				out.print("<h6 style= color:blue; >" + message + "</h6>");
			}
			out.print("</div>");
			%>


			<!-- Optional JavaScript -->
			<!-- jQuery first, then Popper.js, then Bootstrap JS -->
			<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
				integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
				crossorigin="anonymous"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
				integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
				crossorigin="anonymous"></script>
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
				integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
				crossorigin="anonymous"></script>


		</div>

		<!-- JavaScript Link -->
		<script src="validation.js"></script>
	</div>
	</div>
	<br>

	<br>
	<br>

<%@include file="components/footer.jsp"%>

</body>


</html>