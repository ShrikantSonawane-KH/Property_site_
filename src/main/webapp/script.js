

// first request to server tom create order

const paymentStart=()=>{

console.log("payment started");
let amount = $("#payment_field").val();
console.log(amount);

if(amount=="" || amount==null){
alert("amount is required..!");
return;

}


//ajax to send request to server to create order


$.ajax(
{
	url='/user/create_order',
	data:JSON.stringify({amount:amount,info:'order_request'}),
	contentType:'application/json',
	type:'POST',
	dataType:'json',
	
	
	success:function(response){
	//invoked when success
	console.log(response)
	},
	error:function(error){
	//invoked when error
	
	console.log(error)
	alert("something wrong..!")
	
	
	}

}
)
};