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
			name="name" required />
		<h5>Area</h5>
		<input type="text" placeholder="Enter the name of Area" id="area"
			name="area" required />
		<h5>Lane</h5>
		<input type="text" placeholder="Enter the name of Lane" id="lane"
			name="lane" required />
		<h5>LandMark</h5>
		<input type="text" placeholder="Enter the name of LandMark"
			id="landmark" name="landmark" required />
		<h5>City</h5>
		<select id="city" name="city" required>
			<option value="mumbai">Mumbai</option>
			<option value="pune">Pune</option>
			<option value="nashik">Nashik</option>
		</select>
		<h5>State</h5>
		<input type="text" placeholder="Enter the name of State" id="state"
			name="state" required />
		<h5>Country</h5>
		<select id="country" name="country">
			<option value="india">India</option>
		</select>
		<h5>Pincode</h5>
		<input type="text" placeholder="Enter Pincode" id="pincode"
			name="pincode" required /></t>
		</br>
		
		<!-- propery desc -->
		
		<button type="button" id="formButton1">Property Description</button>
		</br>
		<f id="fi">
		<h5>Furnished</h5>
		<select id="furnish" name="furnish" required>
			<option value="mumbai">Furnished</option>
			<option value="pune">Semi-Furnished</option>
			<option value="nashik">Non-Furnished</option>
		</select>
		<h5>Property Status</h5>
		<select id="status" name="status" required>
			<option value="possession">Ready Possession</option>
			<option value="construction">Under Construction</option>
		</select>
		<h5>Special Highlights</h5>
		<input type="textarea" placeholder="Highlights" id="highlights" name="highlights"
			required /> </f>
			
			
			
			
		</br>
		<button type="button" id="formButton2">Property Overview</button>
		<g id="gi">
		<h5>Property Name</h5>
		<input type="text" placeholder="enter property name" id="property"
			name="property_name" required />
		<h5>Security</h5>
		<input type="text" placeholder="Security" id="security"
			name="security" />
		<h5>Maintenance</h5>
		<input type="text" placeholder="Maintenance" id="maintenance"
			name="maintenance" required />
		<h5>Build Area</h5>
		<input type="text" placeholder="Build Area" id="build" name="build_area"
			required />
		<h5>Bathrooms</h5>
		<input type="text" placeholder="No. of Bathrooms" id="bathroom"
			name="NoOfBathroom" required />
			
		<select id="balcony" name="NoOfBalcony"  required>
			<option value="one">1</option>
			<option value="two">2</option>
			<option value="three">3</option>
		</select>	
			
		<h5>Available from</h5>
		<input type="text" placeholder="Available from..." id="available"
			name="availableFrom" required />
		<h5>Floor Number</h5>
		
		<select id="floor" name="NoOfFloor" required>
			<option value="one">1</option>
			<option value="two">2</option>
			<option value="three">3</option>
			<option value="four">4</option>
			<option value="five">5</option>
			<option value="above">Above Five</option>
		</select>
		<h5>Property Age</h5>
		<input type="text" placeholder="age of property" id="age" name="proAge"
			required />
		<h5>Parking</h5>
		<input type="radio" name="parking" value="yes"> Yes </br>
		<input type="radio" name="parking" value="no"> No </br>
		<h5>Entrance Facing</h5>
		<select id="entrance" name="entrance" required>
			<option>Select</option>
			<option value="East">East</option>
			<option value="West">West</option>
			<option value="North">North</option>
			<option value="South">South</option>
		</select>

		<h5>Property For</h5>
		<select id="pro_for" name="pro_for" required>
			<option>Select</option>
			<option value="Rent">Rent</option>
			<option value="Sell">Sell</option>
		</select> </g>
		<br> </br>
		
		
		
		
		<button type="button" id="formButton3" required>Images</button>
		<l id="mi"> <input type="text"
			placeholder="Enter image description" id="imgdesc" name="imgdesc" />
		<br>
		<h5>Upload Images</h5>
		<label for="file">Select files:</label> <input type="file" id="file"
			name="image" multiple onchange="return fileValidation()" required>
		<br>
		</l>
		
		
		
		<br> <br>
		<button type="button" id="formButton4" required>Other Details</button>
		<h5>Price</h5> 
		<u id="csk">
			<input type="text" placeholder="Enter Price" id="price" name="price" required />
			<h5>Deposite</h5> <input type="text" placeholder="Enter Deposite" id="deposite" name="deposite" required />
			<h5>Property Type</h5> 
			
			<select id="type" name="proType" required>
				<option>Select</option>
				<option value="apartment">Apartment</option>
				<option value="villa">Villa</option>
				<option value="floor">Independent Floor</option>
				<option value="penthouse">Penthouse</option>
				<option value="bunglow">Bunglow</option>
				<option value="villa">Villa</option>
		</select>
			<h5>Category</h5> <select id="category" name="proCategory" required>
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
</body>
</html>