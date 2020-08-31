<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<body>
<H3>WELCOME TO ORDER METHOD DATA PAGE</H3>
<c:choose>
<c:when test="${!empty list }">
<table border="1">
    <tr>
        <td>Order Id</td>
        <td>Order Mode</td>
        <td>Order Code</td>
        <td>Order Type</td>
        <td>Order Accept</td>
        <td>Description</td>
        <td colspan="2">Operation</td>
    </tr>
    <c:forEach items = "${list}" var = "ord">
    <tr>
         <td>${ord.ordId }</td>
         <td>${ord.ordMode }</td>
         <td>${ord.ordCode }</td>
         <td>${ord.ordType }</td>
         <td>${ord.ordAccept }</td>
         <td>${ord.ordDesc }</td>
         <td><a href = "delete?sid =${ord.ordId}">Delete</a></td>
         <td><a href = "edit?sid = ${ord.ordId }">Edit</a></td>
         
    </tr>
    </c:forEach>
</table>
</c:when>
<c:otherwise>
<h4>DATA NOT FOUND !!!</h4>
</c:otherwise>
</c:choose>
${msg}
</body>
</html>