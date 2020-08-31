<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO GRN REGISTRATION</h3>
<pre>
<form:form action="save" method="post" modelAttribute="grn">
GRN CODE :
<form:input path="grnCode"/>

GRN TYPE :
<form:input path="grnType"/>

PURCHASE ORDER :
<form:select path="po.poId">
<form:option value="">--SELECT--</form:option>
<form:options items="${purMap}"/>
</form:select>

DESCRIPTION :
<form:textarea path="grnDesc"/>
<input type="submit" value="CREATE GRN">
</form:form>
</pre>
${msg}
</body>
</html>