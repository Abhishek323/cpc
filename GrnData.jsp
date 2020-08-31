<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "UserMenu.jsp" %>
<div class="container">
   <div class = "card">
         <div class = "card-header bg-primary text-white">
              <h1>WELCPME TO GRN DATA PAGE</h1>
         </div>
   <div class = "card-body">
          <table class = "table table-bordered table-hover">
               <tr class = "bg-warning">
                      <td>GRNCODE</td>
                      <td>GRNTYPE</td>
                      <td>NOTE</td>
                      <td colspan="3">OPERATIONS</td>
               </tr>
               <c:forEach items = "${list}" var = "ob">
                      <tr>
                              <td>${ob.grnCode}</td>
                              <td>${ob.grnType}</td>
                              <td>${ob.grnDesc}</td>
                              <td><a href = "viewGrnDtls?id=${ob.grnId }">VIEW PART</a></td>   
                    </tr>
               </c:forEach>       
          </table>
   </div>
   <div class = "card-footer bg-info text-white">
           <b>${message}</b>
   </div>
   </div>
</div>
</body>
</html>