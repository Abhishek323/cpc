<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<h3>Welcome to Part Data Page</h3>
<body>
<c:choose>
<c:when test="${!empty list}">
<table border = "1">
       <tr>
              <td>ID</td>
              <td>CODE</td>
              <td>DIMENSION W</td>
              <td>L</td>
              <td>H</td>
              <td>BASE COST</td>
              <td>BASE CURRENCY</td>
              <td>Uom</td>
              <td>DESCRIPTION</td>
              <td colspan="3">OPERATION</td>
      </tr>
      
      <c:forEach items="${list}" var="pt">
                 <tr>
                       <td>${pt.partId}</td>
                        <td>${pt.partCode}</td>
                         <td>${pt.partW}</td>
                          <td>${pt.partL}</td>
                           <td>${pt.partH}</td>
                            <td>${pt.partCost}</td>
                             <td>${pt.partCurrency}</td>
                             <td>${ob.uomOb.uomModel}</td>
                              <td>${pt.partDesc}</td>
                               <td><a href="delete?sid=${pt.partId}">Delete</a></td>
                               <td><a href="edit?sid=${pt.partId}">Edit</a></td>
                               <td><a href = "view?sid=${pt.partId}">view</a>
                   </tr>           
                       
      </c:forEach>
      </table>
      </c:when>
      <c:otherwise>
       <h4>   Data not Found !!!</h4>
      </c:otherwise>
      </c:choose>
${msg}

</body>
</html>