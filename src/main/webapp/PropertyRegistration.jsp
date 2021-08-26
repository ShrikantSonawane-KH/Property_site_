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
	});
</script>
<meta charset="ISO-8859-1">

<title>Property registration</title>
</head>
<body>

	<h1 class="h3 mb-3 fw-normal">Please Register here</h1>

	<form id="form">
		<button type="button" id="formButton">Fill Address Details</button>
		</br>
		
		<t id="ti">
		<h5>Property Name</h5>
		<input type="text" placeholder="Enter the name of property" id="name"
			name="name" required />
		<h5>Area</h5>
		<input type="text" placeholder="Enter the name of Area" id="area"
			name="area" required/>
		<h5>Lane</h5>
		<input type="text" placeholder="Enter the name of Lane" id="lane"
			name="lane" required/>
		<h5>LandMark</h5>
		<input type="text" placeholder="Enter the name of LandMark"
			id="landmark" name="landmark" required/>
		<h5>City</h5>
		<select id="city" required>
			<option value="mumbai">Mumbai</option>
			<option value="pune">Pune</option>
			<option value="nashik">Nashik</option>
		</select>
		<h5>State</h5>
		<input type="text" placeholder="Enter the name of State" id="state"
			name="state" required />
		<h5>Country</h5>
		<select id="country">
			<option value="india">India</option>
		</select>
		<h5>Pincode</h5>
		<input type="text" placeholder="Enter Pincode" id="pincode"
			name="pincode" required/></t>
			
		</br>
		<button type="button" id="formButton1">Property Description</button>
		</br>
		
		<f id="fi">
		<h5>Furnished</h5>
		<select id="furnish" required>
			<option value="mumbai">Furnished</option>
			<option value="pune">Semi-Furnished</option>
			<option value="nashik">Non-Furnished</option>
		</select>
		<h5>Property Status</h5>
		<select id="status" required>
			<option value="possession">Ready Possession</option>
			<option value="construction">Under Construction</option>
		</select>
		<h5>Special Highlights</h5>
		<input type="textarea" placeholder="Highlights" id="high" name="high" required/>
		</f>
		</br>
		<button type="button" id="formButton2">Property Overview</button>
		<g id="gi">
		<h5>Property Name</h5>
		<input type="text" placeholder="enter property name" id="property"
			name="property" required/>
		<h5>Security</h5>
		<input type="text" placeholder="Security" id="security"
			name="security" />
		<h5>Maintenance</h5>
		<input type="text" placeholder="Maintenance" id="maintenance"
			name="maintenance" required/>
		<h5>Build Area</h5>
		<input type="text" placeholder="Build Area" id="build" name="build" required/>
		<h5>Bathrooms</h5>
		<input type="text" placeholder="No. of Bathrooms" id="bathroom"
			name="bathroom" required />
		<h5>Balcony</h5>
		<input type="text" placeholder="No. of Balconies" id="balcony"
			name="balcony" required/>
		<h5>Available from</h5>
		<input type="text" placeholder="Available from..." id="available"
			name="available" required />
		<h5>Floor Number</h5>
		<select id="floor" required>
			<option value="one">1</option>
			<option value="two">2</option>
			<option value="three">3</option>
			<option value="four">4</option>
			<option value="five">5</option>
			<option value="above">Above Five</option>
		</select>
		<h5>Property Age</h5>
		<input type="text" placeholder="age of property" id="age" name="age" required />
		<h5>Parking</h5>
		<input type="radio" name="yes" value="yes"> Yes </br>
		<input type="radio" name="yes" value="no"> No </br>
		<h5>Entrance Facing</h5>
		<select id="entrance" required>
			<option>Select</option>
			<option value="East">East</option>
			<option value="West">West</option>
			<option value="North">North</option>
			<option value="South">South</option>
		</select>
		<button type="submit">Sign Up</button>
	</form>
</body>
</html>