
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<%@include file="UserMenu.jsp" %>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<H3>WELCOME TO PURCHASE ORDER DATA PAGE</H3>

			</div>
			<div class="card-body">
				<c:choose>
					<c:when test="${!empty list }">
						<table class="table table-hover">
							<tr class="bg-success text-white">
							    <th>SR NO</th>
								<th>ORDER CODE</th>
								<th>SHIPMENT CODE</th>
								<th>VENDOR</th>
								<th>REFERENCE NUMBER</th>
								<th>QUALITY CHECK</th>
								<th>STATUS</th>
								<th>NOTE</th>
								<th colspan="2">OPERATIONS</th>
							</tr>
							<!-- for(Purchase Order ob:list){} -->
							<c:forEach items="${list}" var="ob">
								<tr>

									<td>${ob.poId}</td>
									<td>${ob.orderCode}</td>
									<td>${ob.child.shipCode}</td>
									<td>${ob.whChild.whUserCode}</td>
									<td>${ob.referNumber}</td>
									<td>${ob.qtyCheck}</td>
									<td>${ob.defStatus}</td>
									<td>${ob.desc}</td>
									
									<td><a href="part?poId=${ob.poId}" class="btn btn-info"> 
									ADD PART
									</a></td>
									<td>
									<c:choose>
									<c:when test="${'ORDERED' eq ob.defStatus}">
									<a href="invoice?poId=${ob.poId}" class="btn btn-success">GENERATE INVOICE</a>
								    </c:when>
								    <c:when test="${'INVOICED' eq ob.defStatus }">
								    <a href="downloadPdf?poId=${ob.poId}" class="btn btn-info">DOWNLOAD PDF</a>
								    </c:when>
								    <c:when test="${'RECEIVED' eq ob.defStatus }">
								    <b>ORDER IS USED IN GRN</b>
								    </c:when>
								    <c:otherwise>
								    ORDER MUST BE PLACED
								    </c:otherwise>
								    </c:choose>
								    </td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<H4>NO DATA FOUND!!</H4>
					</c:otherwise>
				</c:choose>
			</div>
		</div> <!-- card end -->
	</div>
	<!-- container end -->
</body>
</html>
