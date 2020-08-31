<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<body>
<H3>WELCOME TO WHUserType REGISTRATION</H3>
<form:form action = "save" method = "POST" modelAttribute="whUser" enctype="multipart/form-data">
<pre>
User Type :
<form:radiobutton path = "whUserType" value = "Vendor"/>Vendor
<form:radiobutton path = "whUserType" value = "Customer"/>Customer

User Code :
<form:input  path  = "whUserCode"/>
<form:errors path = "whUserCode" cssClass = "text-danger"></form:errors>

User For :
<form:input  path  = "whUserFor" readonly="true"/>

User Email :
<form:input  path  = "whEmail"/>
<form:errors path = "whEmail" cssClass = "text-danger"></form:errors>

User Contact :
<form:input  path  = "whUserConct"/>
<form:errors path = "whUserConct" cssClass = "text-danger"></form:errors>

User ID Type : 
<form:select path = "whUserIdType">
   <form:option value = "">- - Select - -</form:option>
   <form:option value = "PAN CARD">PAN CARD</form:option>
   <form:option value = "AADHAR CARD">AADHAR CARD</form:option>
   <form:option value = "VOTER ID">VOTER ID</form:option>
   <form:option value = "OTHER">OTHER</form:option>
</form:select> 

*If Other :
<form:input  path  = "other"/>

ID Number :
<form:input  path  = "whIdNum"/>

IMAGE
<input type="file" name = "fileOb" id = "fileOb">

<input type="submit" value = "Create User"/>
</pre>
</form:form>
${msg}
</body>
</html>