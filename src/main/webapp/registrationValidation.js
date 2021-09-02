
	
	function validate() {

	    let char = /^[a-zA-Z ]*$/;

	    let  user = document.getElementById('floatingName').value;
	    
	    console.log(user.length);
	    if(user == ""){
	        document.getElementById('username').innerHTML="** please fill  user name";
	        return false;
	    }
	     if(user.length <= 2 ){
	        document.getElementById('username').innerHTML="** User name min 3 char";
	        return false;
	    }
	     if(user.length > 25 ){
	        document.getElementById('username').innerHTML="** User name must be less than 25 char";
	        return false;
	    }
	     if (user.match(char))
	     true;
	     else{
	        document.getElementById('username').innerHTML="** Only alphabets is allow";
	        return false;
	    }
	     
	     

	     let id= document.getElementById('floatingInput').value;
	     
	     if(id == ""){
	         document.getElementById('eid1').innerHTML="** please fill email Id";
	         return false;
	     }

	     if(id.indexOf('@')<=0){
	         document.getElementById('eid1').innerHTML="** invalid @ position";
	         return false;
	     }
	     
	     if((id.charAt(id.length-4)!='.') && (id.charAt(id.length-3)!='.'))
	     {
	         document.getElementById('eid1').innerHTML="** invalid . position";
	         return false;
	     }
	     

	     if((id.charAt(id.length-5)=='@') || (id.charAt(id.length-4)=='@'))
	     {
	         document.getElementById('eid1').innerHTML="** invalid email id";
	         return false;
	     }
	     
	     let pas= document.getElementById('floatingPassword').value;

	    
	     if(pas == ""){
	         document.getElementById('pass1').innerHTML="** please fill password";
	         return false;
	     
	     }
	     if(pas.length<4 || pas.length>10){
	         document.getElementById('pass1').innerHTML="** password minimum length 4 and maximum length 10";
	         return false;
	     
	     }
	     if(pas.trim()==""){
	         document.getElementById('pass1').innerHTML="** please with no space password";
	         return false;
	     
	     }
	     
	     let mn= document.getElementById('floatingmobile').value; 
	     
	        if(mn == ""){
	        document.getElementById('mnum').innerHTML="** please fill mobile number";
	        return false;
	    
	    }

	    if(isNaN(mn)){
	        document.getElementById('mnum').innerHTML="** enter only numeric value";
	        return false;
	    
	    }
	    if(mn.length<10 || mn.length>10){
	        document.getElementById('mnum').innerHTML="** mobile number must be 10 digit";
	        return false;
	    }

	    if((mn.charAt(0)!=9) && (mn.charAt(0)!=8) && (mn.charAt(0)!=9)) {
	        document.getElementById('mnum').innerHTML="** mobile number must start with 9,8,7";
	        return false;
	    }
	     
	     
	     document.getElementById('floatingName').value="";
	     document.getElementById('floatingInput').value="";
	     document.getElementById('floatingmobile').value="";
	     
	     
	}
	

	