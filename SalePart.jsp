<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>SALE CODE :</td>
			<td>${so.saleCode}</td>
			<td>|</td>
			<td>STATUS :</td>
			<td>${so.status}</td>
		</tr>
		<tr>
	</table>
	<hr />
	<c:if test="${'SALE-OPEN' eq so.status || 'SALE-READY' eq so.status }">
		<form:form action="addpart" method="post" modelAttribute="saleDtls">
	SELECT PART :
	<form:select path="partChild.partId">
				<form:option value="">--SELECT--</form:option>
				<form:options items="${partMap}" />
			</form:select>
	
	QUANTITY :
	<form:input path="quantity" />

			<input type="submit" value="ADD PART">
			<input type="hidden" name="saleChild.saleId" value="${so.saleId}">
		</form:form>
	</c:if>
	<hr />
	<table border="1">
		<tr>
			<td>SRNO</td>
			<td>PART</td>
			<td>BASE COST</td>
			<td>QTY</td>
			<c:if test="${'SALE-READY' eq so.status}">
				<td>Operation</td>
			</c:if>
		</tr>
		<c:forEach items="${saleDtlsList}" var="dtl">
			<tr>
				<td>${dtl.srno}</td>
				<td>${dtl.partChild.partCode}</td>
				<td>${dtl.partChild.partCost}</td>
				<td>${dtl.quantity}</td>
				<c:if test="${'SALE-READY' eq so.status }">
					<td><a
						href="removepart?dtlsId=${dtl.saleDtlId}&saleId=${so.saleId}">REMOVE</a>
					</td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${'SALE-READY' eq so.status }">
		<a href="placeorder?saleId=${so.saleId}">PLACE ORDER</a>
	</c:if>

</body>
</html>