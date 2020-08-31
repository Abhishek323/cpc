<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome to the Purchase Order Screen 2</h3>
<table border="1">
    <tr>
           <td>ORDER CODE</td><td>${po.orderCode}</td>
           <td>STATUS</td><td>${po.defStatus}</td>       
    </tr>
</table>
<hr/>
<c:if test="${'Open' eq po.defStatus || 'PICKING' eq po.defStatus }" >
<form:form action="addPart" method="post" modelAttribute="purchaseDtls"> 
<pre>
SELECT PART :
<form:select path="part.partId">
<form:option value="">--Select--</form:option>
<form:options items = "${partMap}"/>
</form:select>
QUANTITY :
<form:input path="quantity"/>
<input type="submit" value="Add Part">
<input type = "hidden" name="purOrder.poId" value="${po.poId}">
</pre>
</form:form>
</c:if>
<hr/>
<table border="1">
<tr>
       <td>SlNo</td>
       <td>PART</td>
       <td>BASE COST</td>
       <td>QTY</td>
       <c:if test="${'PICKING' eq po.defStatus }">
       <td>Operation</td>
       </c:if>
</tr>       
<c:forEach items="${childs}" var="dtl">
<tr>
        <td>${dtl.slno}</td>
        <td>${dtl.part.partCode}</td>
        <td>${dtl.part.partCost}</td>
        <td>${dtl.quantity}</td>
        <c:if test="${'PICKING' eq po.defStatus }">
        <td><a href="removePart?dtlsId=${dtl.purDtlsId}&poId=${po.poId}">REMOVE</a></td>
        </c:if>
</tr>        
</c:forEach>
</table>
<c:if test="${'PICKING' eq po.defStatus }">
<a href="placeOrder?poId=${po.poId}">PLACE ORDER</a>
</c:if>
</body>
</html>