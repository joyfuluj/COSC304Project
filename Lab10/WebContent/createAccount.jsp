<%@ page language="java" import="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Account page</title>
</head>
<body>
<%@ include file="jdbc.jsp" %>
<%@ include file="header.jsp" %>

<div style="margin:0 auto;text-align:center;display:inline">

<h3>Please create an account</h3>

<br>
<form name="MyForm" method=post action="validateNewAccount.jsp">
<table style="display:inline">
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">First Name:</font></div></td>
	<td><input type="text" name="firstname"  size=10 maxlength=10></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Last Name:</font></div></td>
	<td><input type="text" name="lastname" size=10 maxlength="10"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Email Address:</font></div></td>
	<td><input type="email" name="email" size=10 minlength="10" maxlength="20"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Phone Number:</font></div></td>
	<td><input type="text" name="phonenum" size=10 maxlength="15"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Address:</font></div></td>
	<td><input type="text" name="address" size=10 maxlength="20"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">City:</font></div></td>
	<td><input type="text" name="city" size=10 maxlength="20"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">State:</font></div></td>
	<td><input type="text" name="state" size=10 maxlength="20"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Postal Code:</font></div></td>
	<td><input type="text" name="postalCode" size=10 maxlength="10"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Country:</font></div></td>
	<td><input type="text" name="country" size=10 maxlength="20"></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">User Id:</font></div></td>
	<td><input type="text" name="username" size=10 maxlength="10"></td>
</tr><tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Password:</font></div></td>
	<td><input type="password" name="password" size=10 maxlength="8"></td>
</tr>
</table>
<br/>
<input class="submit" type="submit" name="Submit2" value="Create new account">
</form>
</div>
<%


%>
</body>
</html>
