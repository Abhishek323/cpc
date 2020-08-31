<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>WELCOME TO SHIPPING DATA PAGE</h3>
	<table border="1">
		<tr>
			<td>SRNO</td>
			<td>SHIPPING CODE</td>
			<td>SHPPING REF NO</td>
			<td>COURIER REF NO</td>
			<td>CONTACT DETAILS</td>
			<td>SALE ORDER CODE</td>
			<td>BILL TO ADD</td>
			<td>SHIP TO ADD</td>
			<td>OPERATION</td>
		</tr>
		<c:forEach items="${list}" var="ship">
			<tr>
				<td>${ship.id}</td>
				<td>${ship.code}</td>
				<td>${ship.refNumber}</td>
				<td>${ship.courierRefNo}</td>
				<td>${ship.contactDtls}</td>
				<td>${ship.so.saleCode}</td>
				<td>${ship.billAddress}</td>
				<td>${ship.shipAddress}</td>
				<td><a href="viewshippingdtls?id=${ship.id }">VIEW PART</a></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>