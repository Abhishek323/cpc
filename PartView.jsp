<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<h3>Welcome to Shipment Type view page</h3>


<table border="1">
                             <tr>
                                     <td>ID</td>   <td>${pt.partId}</td>
                             </tr>      
                             <tr>
                                    <td>Code</td>   <td>${pt.partCode}</td>
                             </tr>
                             <tr>
                                    <td>Width</td>      <td>${pt.partW}</td> 
                             </tr>
                             <tr>
                                      <td>Length</td>    <td>${pt.partL}</td>
                              </tr>
                              <tr>
                                      <td>Height</td>      <td>${pt.partH }</td>
                             </tr>
                             <tr>
                                    <td>Base Cost</td>       <td>${pt.partCost }</td>
                             </tr> 
                             <tr>
                                    <td>Base Currency</td>                 <td>${pt. partCurrency}</td>
                             </tr>
                               <tr>
                                    <td>Description</td>                 <td>${pt. partDesc}</td>
                             </tr>
         </table>

</body>
</html>