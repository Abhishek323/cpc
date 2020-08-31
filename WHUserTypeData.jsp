<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<h3> WELCOME TO WHUserType DATA PAGE</h3>
<body>
<c:choose>
<c:when test="${!empty list}">
<table border="1">
<tr>
      <td> User ID</td>
      <td>User Type</td>
      <td>User Code</td>
      <td>User For</td>
      <td>User Email</td>
      <td>User Contact</td>
      <td>User Id Type</td>
      <td>If Other</td>
      <td>Id Number</td>
      <td colspan="3">OPERATIONS</td>
</tr>
<c:forEach items="${list}" var = "ob">
<tr>
       <td>${ob.whId}</td>
       <td>${ ob.whUserType}</td>
       <td>${ob.whUserCode}</td>
       <td>${ob.whUserFor }</td>
       <td>${ob.whEmail}</td>
       <td>${ob.whUserConct}</td>
       <td>${ob.whUserIdType}</td>
       <td>${ob.other}</td>
       <td>${ob.whIdNum}</td>
       <td><a href="delete?sid=${ob.whId}">Delete</a></td>
       <td><a href="edit?sid=${ob.whId}">Edit</a></td>
       <td><a href = "view?sid=${ob.whId}">view</a>
</tr>
</c:forEach>      
</table>
</c:when>
<c:otherwise>
<h4>NO DATA FOUND ! ! !</h4>
</c:otherwise>
</c:choose>
</body>
</html>