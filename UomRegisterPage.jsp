<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<body>
<form:form  action = "save"  method = "POST" modelAttribute="uom">
<pre>
Uom Type :
<form:select path = "uomType">
<form:option value = "">- - Select - -</form:option>
<form:option value = "Packaging">Packaging</form:option>
<form:option value = "No Packaging">No Packaging</form:option>
<form:option value = "NA">NA</form:option>
</form:select>

Uom Model : 
<form:input  path = "uomModel"/>
<form:errors path="uomModel" cssClass="text-danger"/>

Description:
<form:textarea path = "uomDesc"></form:textarea>

<input type="submit" value = "Create Uom">
</pre>
</form:form>
${message}
</body>
</html>