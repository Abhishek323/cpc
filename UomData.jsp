<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<body>
<h3> Welcome To Uom Data Page</h3>
<c:choose>
<c:when test = "${!empty ulist}">
<table border="1">
    <tr>
        <td>UOM ID</td>
        <td>Uom TYPE</td>
        <td>Uom MODEL</td>
        <td>Uom DESCIPTION</td>
        <td>OPERATIONS</td>
   </tr>
   
   <c:forEach items = "${ulist}" var = "uom">
   <tr>
       <td>${uom.uomId }</td>
       <td>${uom.uomType}</td>
       <td>${uom.uomModel }</td>
       <td>${uom.uomDesc}</td>
       <td><a href="delete?sid=${uom.uomId}">Delete</a></td>
  </tr>
  </c:forEach>
  </table>
  </c:when>
  <c:otherwise>
  <h4>DATA NOT FOUND !!!</h4>
  </c:otherwise>
</c:choose><br><br>
${msg}
</body>
</html>