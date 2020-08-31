<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome To Shipment Type Edit</h3>
<form:form action = "update" method = "POST" modelAttribute="shipmentType">
<pre>
Shipment Id :
<form:input path="shipId" readonly="true"/>

Shipment Mode : 
<form:select path = "shipMode">
   <form:option value = "">- - Select - -</form:option>
   <form:option value = "Air">Air</form:option>
   <form:option value = "Truck">Truck</form:option>
   <form:option value = "Ship">Ship</form:option>
   <form:option value = "Train">Train</form:option>
</form:select> 

Shipment Code :
<form:input  path  = "shipCode"/>

Enable Shipment : 
<form:select path = "enbShip">
<form:option value = "">- - Select - -</form:option>
<form:option value = "Yes">Yes</form:option>
<form:option value = "No">No</form:option>
</form:select>

Shipment Grade :
<form:radiobutton path = "shipGrade" value = "A"/>A
<form:radiobutton path = "shipGrade" value = "B"/>B
<form:radiobutton path = "shipGrade" value = "C"/>C

Description : 
<form:textarea path = "shipDec"/>
<input type="submit" value = "Update"/><br><br>
</pre> 
</form:form>
${msg}
</body>
</html>