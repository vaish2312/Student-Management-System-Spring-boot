<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<c:url value="/image/logo_codenera.png" var="logo" />
<c:url value="/image/home_img.jpg" var="home_img" />

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	display: flex;
	flex-direction: column;
	height: 100vh;
	font-size: 100%;
	font-family: sans-serif;
}

html {
	scroll-behavior: smooth;
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
	padding: 5px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

nav li {
	list-style: none;
	display: inline-block;
	margin: 5px;
}

nav a {
	color: white;
	text-decoration: none;
	padding: 10px;
	margin: 0 5px;
}

nav a:hover {
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
	border: 1px solid white;
	height: 450px;
	display: flex;
	flex-direction: auto;
}

.lcontainer {
	border: 3px solid whitesmoke;
	height: 80vh;
	width: 40%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.profiletitle {
	margin: 30px;
	font-family: Arial, Helvetica, sans-serif;
}

.profiletitle h1 {
	margin: 30px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: xx-large;
}

.profiletitle p {
	margin: 30px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: large;
}

.profiletitle button {
	margin: 30px;
	color: aliceblue;
	padding: 10px;
	background-color: #d34d4d;
	border-radius: 10px;
}

.button-container {
	display: flex;
	flex-direction: row;
}

.profiletitle button:hover {
	cursor: pointer;
	background-color: #ed8686;
}

.rcontainer {
	border: 3px solid whitesmoke;
	height: 80vh;
	width: 60%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.rcontainer img {
	width: max-content;
}

footer {
	background-color: #d34d4d;
	color: white;
	padding: 10px;
	text-align: center;
	position: sticky;
}
</style>


</head>
<body>




	<nav>
		<div>
			<img src="/image/logo_codenera.png">
		</div>
		
		
		<div>
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#service">Service</a></li>
				<li><a href="#course">Course</a></li>
				<li><a href="#information">Information</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</div>
	</nav>

	<section id="home">

		<div class="lcontainer">
			<div class="profiletitle">
				<h1>Welcome to codenera</h1>
				<p>to explore the world of codenera please click below</p>


				<div class="button-container">

					<a href="login.jsp"><button>student login</button></a>

					
					<a href="admin_login.jsp"><button>Admin login</button></a>
					
				</div>



			</div>
		</div>

		<div class="rcontainer">

            <img src="/image/home_img.jpg" alt="profileimg" height="400vh" width="200px">

        </div>
	</section>
	<footer>
		<h3>service</h3>
		<p>@ Codenera. All rights reserved.</p>

	</footer>

</body>
</html>