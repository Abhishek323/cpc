<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 style="text-align: center;">Welcome to Purchase Order Registration Page</h3>
<pre>
<form:form action="save" method = "post" modelAttribute="orderPurchase">

Order Code :
<form:input path="orderCode"/>

Shipment Code :
<form:select path="child.shipId">
<form:option value="">--Select--</form:option>
<form:options items="${shipMap}"></form:options>
</form:select>

Vendor :
<form:select path="whChild.whId">
<form:option value="">--Select--</form:option>
<form:options items="${whMap}"/>
</form:select>

Reference Number : 
<form:input path="referNumber"/>
Quality Check : 
<form:radiobutton path="qtyCheck" value="Required"/>Required
<form:radiobutton path="qtyCheck" value="Not Required"/>Not Required
Default Status :
<form:input path="defStatus" readonly="true"/>
Description :
<form:textarea path="desc"/>
<input type="submit" value = "Place Order">
</form:form>
</pre>
${msg }
</body>
</html>