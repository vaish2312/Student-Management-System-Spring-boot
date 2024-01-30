<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update form</title>
</head>
<body>

<form action="/update/${std1.id}" method="post">
	
	<input type="text" id="name" name="name" value="${std1.name }" placeholder="Name" required>	
	<input type="text" id="email" name="email" value="${std1.email }" placeholder="Email" required>	
	<input type="text" id="password" name="password" value="${std1.password }" placeholder="Password" required>	
	<button type="submit">Update</button>
	</form>
	
</body>
</html>