<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<c:url value="/image/logo_codenera.png" var="logo" />
<c:url value="/image/register_img.jpg" var="register_img" />

<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #d34d4d;
            color: white;
            padding: 10px;
            text-align: center;
        }

        nav {
            background-color: #d34d4d;
            height: max-content;
            padding: 2px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px;
            margin: 0 5px;
            border-radius: 10px;
        }

        nav a:hover {
            background-color: #ed8686;
        }

        nav img {
            height: 15vh;
            width: 19vh;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-left: 10px;
        }

        section {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            text-align: center;
        }

        .register-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 80%;
            max-width: 900px;
            margin: auto;
        }

        .register-form {
          
            max-width: max-content;
            
            margin-left: 1px;
            padding: 5px;
            border-radius: 8px;
            height: 90vh;
            margin-bottom: 10px;
        }

        .register-image {
            width: 100%;
        }

        .register-image img {
           
            width: max-content;
            padding-left: 50px;
            height: 50vh;
           
            border-radius: 8px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input {
            margin: 10px 0;
            padding: 8px;
            border: 1px solid #d34d4d;
            border-radius: 5px;
        }

        button {
            margin: 10px 0;
            padding: 10px;
            background-color: #d34d4d;
            border: none;
            border-radius: 10px;
            color: white;
            cursor: pointer;
        }
        button:hover{
            background-color: #ed8686;
        }

        .login-link a {
            margin: 10px 0;
            text-decoration: none;
            color: #d34d4d;
        }

        
    </style>



</head>
<body>

<nav>
        <div>
            <img src="/image/logo_codenera.png">
        </div>
        <div>
            <a href="home.html">Home</a>
            <a href="#service">Service</a>
            <a href="#course">Course</a>
            <a href="#information">Information</a>
            <a href="#contact">Contact</a>
        </div>
    </nav>

    <section>
        <div class="register-container">
            <div class="register-form">
                <h2>Register</h2>
                
                <form action="addstudent" method="post"> 
	
	                   <input type="text" id="id" name="id" placeholder="Id"  required>
	                   <input type="text" id="name" name="name" placeholder="Name"  required>
	                   <input type="text" id="email" name="email" placeholder="Email"  required>	
	                   <input type="text" id="password" name="password" placeholder="Password"  required>
	                   <button type="submit">Registration</button>
	
	</form>
               
                <div class="login-link">
                    <p>Already have an account? <a href="signin.html">Login here</a></p>
                </div>
            </div>
            <div class="register-image">
                <img src="/image/register_img.jpg">
            </div>
        </div>
    </section>


</body>
</html>