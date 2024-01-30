<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thyme.leaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>

<c:url value="/image/logo_codenera.png" var="logo" />
<c:url value="/image/login_img.jpg" var="login_img" />

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
        }
        nav a:hover{
            border-radius: 10px;
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

        .login-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 80%;
            max-width: 600px;
            margin: auto;
        }

        .login-form {
            width: 100%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
            height: 50vh;
        }

        .login-image {
            width: 100%;
        }

        .login-image img {
            max-width: 100%;
            padding-left: 50px;
            height: auto;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input {
            margin: 10px 0;
            padding: 8px;
        }

        button {
            padding: 10px;
            background-color: #d34d4d;
            margin: 20px;
            padding: 10px;
            border-radius: 10px;
            color: white;
            border: none;
            cursor: pointer;
            
            
        }
        .register-link a{
            text-decoration: none;
            color: #d34d4d;
        }
    </style>


</head>
<body>
        
         <nav>
        <div>
      
            <img src="/image/logo_codenera.png" >
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
        <div class="login-container">
            <div class="login-form">
              
               <form action="/login" method="post">


        <h2>Login</h2>
       
        <input type="email" id="email" name="email" placeholder="Email"required>

       
        <input type="password" id="password" name="password" placeholder="Password" required>

        <button type="submit">Login</button>
        
        </form>          
                <div class="register-link">
                    <p>Don't have an account? <a href="Registration.jsp">Register here</a></p>
                </div>
            </div>
            <div class="login-image">
               <img src="/image/login_img.jpg" alt="login-image">
                
            </div>
        </div>
    </section>

</body>
</html>