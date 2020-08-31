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
<h3>WELCOME TO USER REGISTRATION</h3>
<form:form action="save" method="post" modelAttribute="user">
<pre>
NAME :
<form:input path="userName"/>

Email :
<form:input path="userEmail"/>

PASSWORD :
<form:password path="userPwd"/>

ROLES :
<form:checkbox path="roles" value="ADMIN"/>ADMIN
<form:checkbox path="roles" value="EMPLOYEE"/>EMPLOYEE
<input type="submit" value = "Register">
</pre>

</form:form>

${msg}
</body>
</html>