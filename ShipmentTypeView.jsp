<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h3>Welcome to Shipment Type view page</h3>

<a href = "excel?sid=${ob.shipId }">Excel Export</a>
<a href = "pdf?sid=${ob.shipId }">PDF Export</a>
<table border="1">
                             <tr>
                                     <td>ID</td>   <td>${ob.shipId}</td>
                             </tr>      
                             <tr>
                                    <td>Mode</td>   <td>${ob.shipMode}</td>
                             </tr>
                             <tr>
                                    <td>Code</td>      <td>${ob.shipCode}</td> 
                             </tr>
                             <tr>
                                      <td>Enable</td>    <td>${ob.enbShip}</td>
                              </tr>
                              <tr>
                                      <td>Grade</td>      <td>${ob.shipGrade }</td>
                             </tr>
                             <tr>
                                    <td>Note</td>       <td>${ob.shipDec }</td>
                             </tr> 
         </table>

</body>
</html>