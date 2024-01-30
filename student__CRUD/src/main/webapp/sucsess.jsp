<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student data table</title>

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 10px;
            padding: 0;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #d34d4d;
            color: white;
        }

        tr:hover {
            background-color: white;
        }

        a {
            text-decoration: none;
            color: white;
        }

        a:hover {
            color: black;
        }
        
         button {
         border-radius:4px;
           background-color: #d34d4d;
            
            
        }
    </style>




</head>
<body>
  <table border="2"> 
    <tr>
    <th>student iD</th>
    <th>student name</th>
    <th>student email</th>
    <th>student password</th>
    <th>Edit</th>
    <th>Delete<th>  
    </tr>
    <c:forEach var="std" items="${e_data}"> 
      <tr>
      <td>${std.id}</td>
      <td>${std.name}</td>
      <td>${std.email }</td>
      <td>${std.password}</td>
      
     <td> <button> <a href="<c:url value='/edit/${std.id }'/>">Update</a></button> </td>
     <td> <button><a href="<c:url value='/${std.id }'/>">Delete</a></button> </td>
      
      
      </tr>
     
    </c:forEach>
 
  </table>
</body>
</html>