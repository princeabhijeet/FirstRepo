<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%!
//Declaring 2 data structures(Map in java) to store 
//1.pincode and city
//2.pincode and number of days
    Map zipcodedays = new HashMap();
    Map zipcodecitys = new HashMap();
%>


<% 
  //Populating the datastructures  
    zipcodedays.put("500055","1");
    zipcodedays.put("560100","3");
    zipcodedays.put("160101","5");
    zipcodedays.put("500032","2");
    zipcodedays.put("302037","2");
    zipcodedays.put("575006","4");
    zipcodedays.put("574153","6");
    zipcodedays.put("400021","7");
    zipcodedays.put("411057","8");
    zipcodedays.put("695583","7");  


    zipcodecitys.put("500055","Hyderabad");
    zipcodecitys.put("560100","Bengaluru");
    zipcodecitys.put("160101","Chandigarh");
    zipcodecitys.put("500032","Hyderabad");
    zipcodecitys.put("302037","Jaipur");
    zipcodecitys.put("575006","Mangaluru? -1");
    zipcodecitys.put("574153","Mangaluru? -2");
    zipcodecitys.put("400021","Mumbai");
    zipcodecitys.put("411057","Pune");   
    zipcodecitys.put("695583","Thiruvananthapuram");   

// Retrieving the data with the variable name "pincode" sent from the client 
    String str=request.getParameter("pincode");

 //Checking if the details for a  pincode sent by the client exist in the Map
    if(zipcodedays.containsKey(str.trim()))
    {
//if present send the details back to the client
    out.print(zipcodedays.get(str.trim()) +"day(s) to your City :"+zipcodecitys.get(str.trim()));
    }
else
//else  send back an appropriate message back to the client
    out.print( "Sorry! ,City not listed");

%>
</body>
</html>