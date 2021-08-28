function clearErrors() {
	errors = document.getElementsByClassName("formerror");
	for (let item of errors) {
		item.innerHTML = "";
	}
}

function seterror(id, error) {
	//set error inside tag of id
	element = document.getElementById(id);
	element.getElementsByClassName("formerror")[0].innerHTML = error;
}

function validateForm() {
	var returnval = true;
	clearErrors();

	var namev = document.forms["myForm"]["name"].value;
	if (namev.length == 0) {
		seterror("namev", "*Property name should not be blank");
		returnval = false;
	}
	var areav = document.forms["myForm"]["area"].value;
	if (areav.length == 0) {
		seterror("areav", "*Property area should not be blank");
		returnval = false;
	}
	var lanev = document.forms["myForm"]["lane"].value;
	if (lanev.length == 0) {
		seterror("lanev", "*Property lane should not be blank");
		returnval = false;
	}
	var landmarkv  = document.forms["myForm"]["landmark"].value;
	if (landmarkv.length == 0) {
		seterror("landmarkv", "*Property landmark should not be blank");
		returnval = false;
	}
	var pincodev = document.forms["myForm"]["pincode"].value;
	if (pincodev.length == 0) {
		seterror("pincodev", "*pincode should not be blank");
		returnval = false;
	}
	var pincodev = document.forms["myForm"]["pincode"].value;
	var regx = /^[0-9]{6}$/;
	if (regx.test(pincodev) == false) {
		seterror("pincodev", "*please enter valid pincode");
		returnval = false;
	}
	var heighlightv = document.forms["myForm"]["highlights"].value;
	if (heighlightv.length == 0) {
		seterror("heighlightv", "*Special Heighlights should not be blank");
		returnval = false;
	}
	var securityv = document.forms["myForm"]["security"].value;
	if (securityv.length == 0) {
		seterror("securityv", "*security field should not be blank");
		returnval = false;
	}

	var maintenancev = document.forms["myForm"]["maintenance"].value;
	if (maintenancev.length == 0) {
		seterror("maintenancev", "*maintenance field should not be blank");
		returnval = false;
	}
	var buildareav = document.forms["myForm"]["build_area"].value;
	if (buildareav.length == 0) {
		seterror("buildareav", "*buildarea field should not be blank");
		returnval = false;
	}
	var avv = document.forms["myForm"]["availableFrom"].value;
	if (avv.length == 0) {
		seterror("avv", "*this field should not be blank");
		returnval = false;
	}
	var floorv = document.forms["myForm"]["NoOfFloor"].value;
	if (floorv.length == 0) {
		seterror("floorv", "*this place should not be blank");
		returnval = false;
	}
	var agev = document.forms["myForm"]["proAge"].value;
	if (agev.length == 0) {
		seterror("agev", "*this place should not be blank");
		returnval = false;
	}
	var descv= document.forms["myForm"]["imagedesc"].value;
	if ( descv.length == 0) {
		seterror("descv", "*Img desc should not be blank");
		returnval = false;
	}
	var pricev= document.forms["myForm"]["price"].value;
	if ( pricev.length == 0) {
		seterror("pricev", "*Price amount should not be blank");
		returnval = false;
	}

var depov= document.forms["myForm"]["deposite"].value;
	if ( depov.length == 0) {
		seterror("depov", "*Deposite amount field should not be blank");
		returnval = false;
	}

	return returnval;
}
