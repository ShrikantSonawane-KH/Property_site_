<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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


<meta charset="ISO-8859-1">

<title>Form</title>
</head>
<body>



	<h1 class="h3 mb-3 fw-normal">Please Register here</h1>

	<form id="form" action="PropertyRegController" >
		<button type="button" id="formButton">Address Details</button>
		</br>
		<t id="ti">
		<h5>Name of Property</h5>
		<input type="text" placeholder="Enter the name of property" id="name"
			name="name"  />
		<h5>Area</h5>
		<input type="text" placeholder="Enter the name of Area" id="area"
			name="area"  />
		<h5>Lane</h5>
		<input type="text" placeholder="Enter the name of Lane" id="lane"
			name="lane"  />
		<h5>LandMark</h5>
		<input type="text" placeholder="Enter the name of LandMark"
			id="landmark" name="landmark"  />
		<h5>City</h5>
		<select id="city" name="city" required>
			<option value="mumbai">Mumbai</option>
			<option value="pune">Pune</option>
			<option value="nashik">Nashik</option>
		</select>
		<h5>State</h5>
		<input type="text" placeholder="Enter the name of State" id="state"
			name="state"  />
		<h5>Country</h5>
		<select id="country" name="country">
			<option value="india">India</option>
		</select>
		<h5>Pincode</h5>
		<input type="text" placeholder="Enter Pincode" id="pincode"
			name="pincode"  /></t>
		</br>
		
		<!-- propery desc -->
		
		<button type="button" id="formButton1">Property Description</button>
		</br>
		<f id="fi">
		<h5>Furnished</h5>
		<select id="furnish" name="furnish" >
			<option value="mumbai">Furnished</option>
			<option value="pune">Semi-Furnished</option>
			<option value="nashik">Non-Furnished</option>
		</select>
		<h5>Property Status</h5>
		<select id="status" name="status" >
			<option value="possession">Ready Possession</option>
			<option value="construction">Under Construction</option>
		</select>
		<h5>Special Highlights</h5>
		<input type="textarea" placeholder="Highlights" id="highlights" name="highlights"
			 /> </f>
			
			
			
			
		</br>
		<button type="button" id="formButton2">Property Overview</button>
		<g id="gi">
		<h5>Property Name</h5>
		<input type="text" placeholder="enter property name" id="property"
			name="property_name"  />
		<h5>Security</h5>
		<input type="text" placeholder="Security" id="security"
			name="security" />
			
		<h5>Maintenance</h5>
		<input type="text" placeholder="Maintenance" id="maintenance"
			name="maintenance"  />
		<h5>Build Area</h5>
		<input type="text" placeholder="Build Area" id="build" name="build_area"
			 />
		<h5>Bathrooms</h5>
		<select id="bathroom" name="NoOfBathroom" >
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
		</select>	
		
			
		<h5>balcony</h5>	
		<select id="balcony" name="NoOfBalcony">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
		</select>	
			
		<h5>Available from</h5>
		<input type="text" placeholder="Available from..." id="available"
			name="availableFrom"  />
		<h5>Floor Number</h5>
		
		<select id="floor" name="NoOfFloor" >
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">Above Five</option>
		</select>
		<h5>Property Age</h5>
		<input type="text" placeholder="age of property" id="age" name="proAge"
			required />
		<h5>Parking</h5>
		<input type="radio" name="parking" value="yes"> Yes </br>
		<input type="radio" name="parking" value="no"> No </br>
		<h5>Entrance Facing</h5>
		<select id="entrance" name="entrance" >
			<option>Select</option>
			<option value="East">East</option>
			<option value="West">West</option>
			<option value="North">North</option>
			<option value="South">South</option>
		</select>

		<h5>Property For</h5>
		<select id="pro_for" name="pro_for" >
			<option>Select</option>
			<option value="Rent">Rent</option>
			<option value="Sell">Sell</option>
		</select> </g>
		<br> </br>
		
		
		<button type="button" id="formButton3" >Images</button>
		<l id="mi"> <input type="text"
			placeholder="Enter image description" id="imgdesc" name="imgdesc" />
		<br>
		<h5>Upload Images</h5>
		<label for="file">Select files:</label> <input type="file" id="file"
			name="image" multiple onchange="return fileValidation()" >
		<br>
		</l>
		
		
		
		<br> <br>
		<button type="button" id="formButton4" >Other Details</button>
		<h5>Price</h5> 
		<u id="csk">
			<input type="text" placeholder="Enter Price" id="price" name="price"  />
			<h5>Deposite</h5> <input type="text" placeholder="Enter Deposite" id="deposite" name="deposite"  />
			<h5>Property Type</h5> 
			
			<select id="type" name="proType" >
				<option>Select</option>
				<option value="apartment">Apartment</option>
				<option value="villa">Villa</option>
				<option value="floor">Independent Floor</option>
				<option value="penthouse">Penthouse</option>
				<option value="bunglow">Bunglow</option>
				<option value="villa">Villa</option>
		</select>
			<h5>Category</h5> <select id="category" name="proCategory" >
				<option>Select</option>
				<option value="1rk">1RK</option>
				<option value="1bhk">1BHK</option>
				<option value="2bhk">2BHK</option>
				<option value="3bhk">3BHK</option>
				<option value="4bhk">4BHK</option>
				<option value="5bhk">5BHK</option>
		</select>
		</u> <br><br>
		<button type="submit">Sign Up</button>
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
	
	
</body>
</html>