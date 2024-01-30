<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>table</h1>



<table border="2"> 
    <tr>
    <th>student iD</th>
    <th>student name</th>
    <th>student email</th>
    <th>student password</th>
    <th>Edit</th>
    <th>Delete<th>  
    </tr>
    <c:forEach var="ad" items="${e_data}"> 
      <tr>
      <td>${std.id}</td>
      <td>${std.name}</td>
      <td>${std.email }</td>
      <td>${std.password}</td>
      
     <td> <button> <a href="<c:url value='/edit/${ad.id }'/>">Update</a></button> </td>
     <td> <button><a href="<c:url value='/${ad.id }'/>">Delete</a></button> </td>
      
      
      </tr>
     
    </c:forEach>
 
  </table>


</body>
</html>