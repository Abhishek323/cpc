<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<h3>Welcome to Part Edit Page</h3>
<body>
<form:form action = "update" method = "POST" modelAttribute="part">
<pre>
ID :
<form:input path="partId" readonly="true"/>
Code :
<form:input path="partCode"/>
Dimensions :
W :
<form:input path="partW"/>
L :
<form:input path="partL"/>
H :
<form:input path="partH"/>
Base Cost :
<form:input path="partCost"/>
Base Currency :
<form:select path="partCurrency">
<form:option value="">- - Select - -</form:option>
<form:option value="INR">INR</form:option>
<form:option value="USD">USD</form:option>
<form:option value="AUS">AUS</form:option>
<form:option value="ERU">ERU</form:option>
</form:select>

Uom :
<form:select path="uomOb.uomId">
     <form:option value = "">- -Select- -</form:option>
     <form:options items="${uomMap }" />
</form:select>

Description :
<form:textarea path="partDesc"/>
<input type = "submit" value = "Update"> 
</pre>
</form:form>
${msg }
</body>
</html>