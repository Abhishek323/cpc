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
<h3>WELCOME TO SHIPPING REGISTERRATION</h3>
<pre>
<form:form action = "save" method = "post" modelAttribute = "shipping">


SHIPPING CODE :
<form:input path="Code"/>

SHIPPING REFERENCE NUMBER :
<form:input path="refNumber"/>

COURIER REFERENCE NUMBER :
<form:input path="courierRefNo"/>

CONTACT DETAILS :
<form:textarea path="contactDtls"/>

SALE ORDER CODE :
<form:select path="so.saleId">
<form:option value="">--SELECT--</form:option>
<form:options items = "${saleMap}"/>
</form:select>

BILL TO ADDRESS :
<form:textarea path="billAddress"/>

SHIP TO ADDRESS :
<form:textarea path="shipAddress"/>

DESCRIPTION :
<form:textarea path="desciption"/>

<input type = "submit" value = "CREATE SHIPPING">
</form:form>
</pre>
${msg}
</body>
</html>