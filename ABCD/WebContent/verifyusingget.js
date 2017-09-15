function verify() {
	'use strict';
	//1.creating the XMLHTTPRequest
	var xmlhttp, pincode;
	
	if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	}
	pincode = document.getElementById("pc").value;
	//2.Configuring onreadystatechange event handler to handle server response
	xmlhttp.onreadystatechange = function () {
		if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
			//3.Retrieving the textual response from the server
			var responsestring = xmlhttp.responseText;
			document.getElementById("msg").innerHTML = "*(Delivery to Pincode guaranteed in: " + responsestring;
		}
	};
	//4.Sending a request to Server
	xmlhttp.open("GET", "checkpincode.jsp?pincode=" + pincode, true);
	xmlhttp.send();
}