<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO SALE ORDER REGISTRATION</h3>
<form:form action="save" method = "post" modelAttribute="sale">
<pre>
SALE CODE :
<form:input path="saleCode"/>

SHIPMENT CODE :
<form:select path="shipChild.shipId">
<form:option value="">--SELECT--</form:option>
<form:options items="${ shipMap}"></form:options>
</form:select>

CUSTOMER :
<form:select path="whChild.whId">
<form:option value="">--SELECT--</form:option>
<form:options items="${whMap }"></form:options>
</form:select>

REFERENCE NUMBER :
<form:input path = "refNumber" />

STOCK MODE :
<form:radiobutton path="mode" value="GRADE"/>GRADE
<form:radiobutton path="mode" value = "MARGIN"/>MARGIN

STOCK SOURCE :
<form:select path="source">
<form:option value="">--SELECT--</form:option>
<form:option value="OPEN">OPEN</form:option>
<form:option value="AVAIL">AVAIL</form:option>
<form:option value="REFUND">REFUND</form:option>
</form:select>

STATUS :
<form:input path="status" readonly="true"/>

DESCRIPTION :
<form:textarea path="note"/>

<input type="submit" value = "CREATE SALE ORDER">
</pre>
</form:form>
${msg}
</body>
</html>