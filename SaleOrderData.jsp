<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>SRNO</td>
			<td>SHIPMENT CODE</td>
			<td>CUSTOMER</td>
			<td>REFERENCE NUMBER</td>
			<td>STOCK MODE</td>
			<td>STOCK SOURCE</td>
			<td>STATUS</td>
			<td>NOTE</td>
			<td colspan="2">OPERATION</td>
		</tr>
		<c:forEach items="${saleList}" var="sale">
			<tr>
				<td>${sale.saleId}</td>
				<td>${sale.shipChild.shipCode}</td>
				<td>${sale.whChild.whUserCode}</td>
				<td>${sale.refNumber}</td>
				<td>${sale.mode}</td>
				<td>${sale.source}</td>
				<td>${sale.status}</td>
				<td>${sale.note}</td>
				<td><a href="part?id=${sale.saleId}">ADD PART</a></td>
				<td>
				<c:choose>
					<c:when test="${'SALE-CONFIRM' eq sale.status }">
						<a href="invoice?id=${sale.saleId}">GENERATE INVOICE</a>
					</c:when>
					<c:when test="${'SALE-INVOICED' eq sale.status }">
						<a href="downloadpdf?id=${sale.saleId }">DOWNLOAD PDF</a>
					</c:when>
					<c:when test="${'SALE-SHIPPED' eq sale.status }">
						<b>ORDER IS USED IN SHIPPING</b>
					</c:when>
					<c:otherwise>
				ORDER MUST BE PLACED
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>