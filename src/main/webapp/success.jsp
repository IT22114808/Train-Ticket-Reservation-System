<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>


body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('images/train.jpg');
    background-size: cover;
}

.header {
    background-color: rgba(61, 57, 57, 0.5);
    background-blend-mode: lighten ;
    color: white;
    padding: 20px 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height:35px;
}

.logo img {
    width: 100px;
    height: auto;
    margin-left: 20px;
}

.navigation ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
}

.navigation li {
    margin: 0 15px;
}

.navigation a {
    color: rgb(255, 255, 255);
    text-decoration: none;
    font-weight: bold;
    transition: 0.3s;
}

.navigation a:hover {
    color: #ff9900;
}

.body-content {
    height:880px;
    padding: 50px;
    color:white;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: -50px;
    
}

.footer {
    background-color: rgba(255, 255, 255,0.7);
    color: rgb(0, 0, 0);
    height: 100px;
    padding: 10px 0;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.contact-details,
.sponsors {
    text-align: center;
}

.sponsors img {
    width: 100px;
    height: auto;
    margin: 10px;
}


.signup-container {
    background: linear-gradient(to right,rgba(255, 149, 37, 0.7), rgba(51, 114, 240, 0.7) );
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    text-align: center;
    padding: 30px 80px 50px 80px;
    max-width: 500px;
    width: 100%;
    height: 80%;
}

.signup-container h2 {
    margin-bottom: 40px;
    color: #ffffff;
    font-size:36px;
}

.form-group {
    margin-bottom: 20px;
    text-align: left;
}

.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color:black;
}

.form-group input[type="text"],
.form-group input[type="password"] {
    width: calc(100% - 20px);
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 10px;
    font-size: 16px;
    transition: border-color 0.3s;
    background-color: rgba(255, 255, 255, 0.5);
}

.form-group input[type="text"]:focus,
.form-group input[type="password"]:focus {
    border-color: #007bff;
    background-color: rgba(255, 255, 255, 0.5);
}

.signup-btn {
    width: 100%;
    padding: 10px;
    background-color: #000000;
    border: none;
    color: white;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.signup-btn:hover {
    background-color: #c3a511;
}


table {
    width: 100%;
    border-collapse: collapse;
    border: 0px;
    border-radius: 10px;
    background-color: rgba(0, 0, 0,0.2);
}

table tr{
	border-bottom: 1px solid rgba(225,225,225,0.5);
	width: 80%;
}

td {
    padding: 10px;
    height: 50px;
    text-align: center;
    font-weight: bold;
  }  
    .box h1{
  		margin-left:250px;
        color: #fff;
        font-size: 30px;
        font-weight: 800;
        letter-spacing: 0.1em;
        text-shadow: 0 0 10px #00b3ff,
                    0 0 20px #00b3ff,
                    0 0 40px #00b3ff,
                    0 0 80px #00b3ff,
                    0 0 120px #00b3ff;

}
}

</style>
</head>
<body>

    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <div class="box">
			<h1 style="color:whitesmoke;text-align:center">EASY TRAIN RESEVATION</h1>
		</div>
        <nav class="navigation">
            <ul>
                <li><a href="Home.jsp">Home</a></li> 
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="InqInsert.jsp">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>
    
  	<div class="body-content">
      <div class="signup-container">
      
      	<h2>Inquiry Details</h2>

	<table>
	<c:forEach var="inq" items="${inqDetails}">
	
	
	<!-- Iterate through inquiry details -->
	<c:set var="type" value="${inq.type}"/>
	<c:set var="name" value="${inq.name}"/>
	<c:set var="phone" value="${inq.phone}"/>
	<c:set var="email" value="${inq.email}"/>
	<c:set var="nic" value="${inq.nic}"/>
	<c:set var="title" value="${inq.title}"/>
	<c:set var="inquiry" value="${inq.inquiry}"/>
		
		<tr>
			<td>Type</td>
			<td>${inq.type}</td>
		</tr>
		
		<tr>
			<td>Name</td>
			<td>${inq.name}</td>
		</tr>
		
		<tr>
			<td>Phone</td>
			<td>${inq.phone}</td>
		</tr>
		
		<tr>
			<td>Email</td>
			<td>${inq.email}</td>
		</tr>
		
		<tr>
			<td>NIC</td>
			<td>${inq.nic}</td>
		</tr>
		
		<tr>
			<td>Title</td>
			<td>${inq.title}</td>
		</tr>
		
		<tr>
			<td>Inquiry</td>
			<td>${inq.inquiry}</td>
		</tr>
			
	</c:forEach>
	</table>
	
	<c:url value="inqUpdate.jsp" var="inqUpdate">
		<c:param name="type" value="${type}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="phone" value="${phone}"></c:param>
		<c:param name="email" value="${email}"></c:param>
		<c:param name="nic" value="${nic}"></c:param>
		<c:param name="title" value="${title}"></c:param>
		<c:param name="inquiry" value="${inquiry}"></c:param>		
	</c:url>
	
	<br>
	<a href="${inqUpdate}">
	 	<!-- Link to update inquiry page with parameters -->
     	<input type="button" class="signup-btn" name="update" value="Update Iquiry">
	</a>
	<br>
	<br>
	<c:url value="inqDelete.jsp" var ="inqDelete">
		<c:param name="type" value="${type}"></c:param>
		<c:param name="name" value="${name}"></c:param>
		<c:param name="phone" value="${phone}"></c:param>
		<c:param name="email" value="${email}"></c:param>
		<c:param name="nic" value="${nic}"></c:param>
		<c:param name="title" value="${title}"></c:param>
		<c:param name="inquiry" value="${inquiry}"></c:param>	
	</c:url>
	
	
	<a href="${inqDelete}">
		 <!-- Link to delete inquiry page with parameters -->
		 <input type="button" class="signup-btn" name="delete" value="Delete Inquiry">
	</a>
		</div>
	</div>

        <footer class="footer">
            <div class="contact-details">
                <h3>Contact Us</h3>
                <p>Email: info@example.com</p>
                <p>Phone: +123 456 789</p>
            </div>
           <div class="sponsors">
                <h3>Our Sponsors</h3>
                <img src="images/visa.png" alt="Sponsor 1">
                <img src="images/paypal.png" alt="Sponsor 2">
            </div>
        </footer>
    </body>
	
</html>
















