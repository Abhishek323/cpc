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
	<table border="1">
		<tr>
			<td>PART CODE</td>
			<td>BASE COST</td>
			<td>QUANTITY</td>
			<td>LINE VALUE</td>
			<td colspan="2">OPERATION</td>
		</tr>
		<c:forEach items="${shipDtlList}" var="dtl">
			<tr>
				<td>${dtl.partCode}</td>
				<td>${dtl.baseCost}</td>
				<td>${dtl.qty}</td>
				<td>${dtl.qty * dtl.baseCost}</td>
				<td><c:choose>
						<c:when test="${'NONE' eq dtl.partStatus}">
							<a
								href="updatestatus?id=${dtl.shippDtlId}&status=RECEIVED&shippId=${dtl.shippOb.id}">RECEIVED</a>
							<a
								href="updatestatus?id=${dtl.shippDtlId}&status=RETURNED&shippId=${dtl.shippOb.id}">RETURNED</a>
						</c:when>
						<c:when test="${'RECEIVED' eq dtl.partStatus }">
							<b>RECEIVED</b>
						</c:when>
						<c:when test="${'RETURNED' eq dtl.partStatus }">
							<b>RETURNED</b>
						</c:when>
					</c:choose>
					</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>