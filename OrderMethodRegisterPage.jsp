<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
</head>
<body>
<form:form action = "save" method = "POST" modelAttribute="orderMethod">
<pre>
Order Mode :
<form:radiobutton  path = "ordMode" value = "Sale"/>Sale
<form:radiobutton path = "ordMode" value = "Purchase"/>Purchase

Order Code :
<form:input  path = "ordCode"/>

Order Type :
<form:select path = "ordType">
<form:option value = "">- -Select - -</form:option>
<form:option value = "FIFD">FIFD</form:option>
<form:option value = "LIFO">LIFO</form:option>
<form:option value = "FCFO">FCFO</form:option>
<form:option value = "FEFO">FEFO</form:option>
</form:select>

Order Accept :
<form:checkbox path = "ordAccept" value = "Multi-Model"/>Multi-Model
<form:checkbox path = "ordAccept" value = "Accept Return"/>Accept Return

Description :
<form:textarea  path = "ordDesc"></form:textarea>

<input type="submit" value = "Create Order Method">
</pre>
</form:form>
${msg}
</body>
</html>