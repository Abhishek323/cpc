<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<body>
<h3>Welcome to Order Method edit page</h3>
<form action = "edit" method = "POST" modelAttribute = "orderMethod">
<pre>
Order Id :
<input type = "text" name = "ordId" readonly="readonly">


Order Mode :
<input type = "radio" name = "ordMode" value = Sale>Sale
<input type = "radio" name = "ordMode" value = Purchase>Purchase<br><br>

Order Code :
<input type="text" name = "ordCode"><br><br>

Order Method :
<select name = "ordMethod">
<option>- -Select - -</option>
<option>FIFD</option>
<option>LIFO</option>
<option>FCFO</option>
<option>FEFO</option>
</select><br><br>

Order Accept :
<input type = "checkbox" name = "ordAccept" value = "Multi-Model">
<input type = "checkbox" name = "ordAccept" value = "Accept Return"><br><br>

Description :
<textarea  name = "ordDesc"></textarea><br><br>

<input type="submit" value = "Edit">
</pre>
</form>








<!--            <tr> -->
<%--                  <td>ID</td>     <td>${om.ordId }</td> --%>
<!--            </tr> -->
<!--            <tr> -->
<%--                  <td>Order Mode</td>     <td>${om.ordMode }</td> --%>
<!--             </tr> -->
<!--             <tr> -->
<%--                  <td>Order Type</td>       <td>${om.ordType }</td> --%>
<!--              </tr> -->
      
</body>
</html>