<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<body>
<form:form action = "update" method = "POST" modelAttribute="whUser">
<pre>
ID : 
<form:input path="whId" readonly="true"/>
User Type :
<form:radiobutton path = "whUserType" value = "Vendor"/>Vendor
<form:radiobutton path = "whUserType" value = "Customer"/>Customer

User Code :
<form:input  path  = "whUserCode"/>

User For :
<form:input  path  = "whUserFor" readonly="true"/>

User Email :
<form:input  path  = "whEmail"/>

User Contact :
<form:input  path  = "whUserConct"/>

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

<input type="submit" value = "Update"/>
</pre>
</form:form>

</body>
</html>