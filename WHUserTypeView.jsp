<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<h3>Welcome to WHUserType view page</h3>


<table border="1">
                             <tr>
                                     <td>ID</td>   <td>${ob.whId}</td>
                             </tr>      
                             <tr>
                                    <td>User Type</td>   <td>${ob.whUserType}</td>
                             </tr>
                             <tr>
                                    <td>User Code</td>      <td>${ob.whUserCode}</td> 
                             </tr>
                             <tr>
                                      <td>User For</td>    <td>${ob.whUserFor}</td>
                              </tr>
                              <tr>
                                      <td>User Email</td>      <td>${ob.whEmail }</td>
                             </tr>
                             <tr>
                                    <td>User Contact</td>       <td>${ob.whUserConct }</td>
                             </tr> 
                             <tr>
                             <td>User ID Type</td>                <td>${ob.whUserIdType }</td>
                             </tr>
                             <tr>
                             <td>If Other</td>                         <td>${ob.other }</td>
                             </tr>
                             <tr>
                             <td>ID Number</td>                  <td>${ob.whIdNum }</td>
         </table>
</body>
</html>