<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<body>
<h3>Welcome to document page</h3>
<form action="upload" method="post" enctype="multipart/form-data">

<pre>
ID :
<input type = "text" name = "fileId" >
Document :
<input type = "file" name = "fileOb">
<input type = "submit" value = "Upload">
</pre>

</form>
${message}
<table border="1">
         <tr>
                 <td>ID</td>
                 <td>Name</td>
                 <td>LINK</td>   
         </tr>
 <c:forEach items = "${list}" var = "ob">
         <tr>
                <td>${ob[0]}</td>
                <td>${ob[1]}</td>
                <td><a href = "download?id=${ob[0]}">DOWNLOAD</a></td>
         </tr>
 </c:forEach>
</table>

</body>
</html>