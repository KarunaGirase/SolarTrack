<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Add Subsidy Reports</h1>
<form action="AddReports" method ="post">
<br>
<br>
<label>Contact</label>
<input type = "text" name ="InstallationId">
<br>
<br>
<label>Email</label>
<input type = "text" name = "InstallerEmail">
<br>
<br>
<label>License No</label>
<input type = "text" name = "InstallerLicenseNo">
<br>
<br>
<label>Name</label>
<input type = "text" name = "InstallerName">
<br>
<br>
<label>Password</label>
<input type = "text" name = "InstallerPassword">
<br>
<br>
<button type = "submit">Add</button>
<br>
<br>
</form>
</center>
</form>
</body>
</html>