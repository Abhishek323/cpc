<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO GRN PARTS PAGE</h3>
<table border="1">
          <tr>
                  <td>PART CODE</td>
                  <td>BASE COST</td>
                  <td>QUANTITY</td>
                  <td>LINE VALUE</td>
                  <td>OPERATION</td>
          </tr>
          <c:forEach items ="${grnDtlList }" var = "dtl">
          <tr>
                  <td>${dtl.partCode }</td>
                  <td>${dtl.baseCost }</td>
                  <td>${dtl.qty }</td>
                  <td>${dtl.qty * dtl.baseCost }</td>
                  <td>
                          <c:choose>
                                    <c:when test="${ 'NONE' eq dtl.partStatus}">
                                    <a href = "partStatus?id=${dtl.id}&status=ACCEPT&grnId=${dtl.grn.grnId}" class = "btn btn-success">ACCEPT</a>
                                    <a href = "partStatus?id=${dtl.id}&status=REJECT&grnId=${dtl.grn.grnId}" class = "btn btn-danger">REJECT</a>
                                    </c:when>     
                                    <c:when test="${'ACCEPT' eq dtl.partStatus }">
                                    <b class = "text	-success">ACCEPTED</b>
                                    </c:when> 
                                    <c:when test="${'REJECT' eq dtl.partStatus }">
                                    <b class = "text	-success">REJECTED</b>
                                    </c:when>   
                          </c:choose> 
                  </td>
          </tr>
          </c:forEach>        
</table>
</body>
</html>