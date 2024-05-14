<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Web site</title>
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
	  background-blend-mode: lighten;
	  color: white;
	  padding: 20px 0;
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	  height: 35px;
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
	  padding: 50px;
	}
	
	.footer {
	  background-color: rgba(51, 51, 51, 0.5);
	  height:130px;
	  color: white;
	  padding: 20px 0;
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
	  margin: 5px;
	}
	
	.table1 {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  width: 100%;
	  height: 100%;
	}
	
	tr {
	  background-color: #f2f2f2;
	  font-weight: bold;
	  padding: 8px;
	  text-align: left;
	  border-bottom: 2px solid #333;
	  width: 100%;
	  height: 100%;
	}
	
	.inquiry {
	  display: flex;
	  flex-direction: column;
	  align-items: center;
	  justify-content: center;
	  background: rgb(178, 190, 181,0.5);
	  color: #fff;
	  width: 50%;
	  margin-left: 350px;
	  background-size: cover;
	  border-radius: 60px;
	  
	}
	
	.inquiry2 {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  width: 100%;
	}
	
	.inputs {
	  display: flex;
	  flex-direction: row;
	  gap: 100px;
	  justify-content: space-between;
	  align-items: center;
	}
	
	.inputs p {
	  font-size: 20px;
	  font-weight: bold;
	}
	
	.inputs input {
	  height: 20px;
	  border-radius: 10px;
	}
	
	.main {
	  background-color: black;
	}
	
	.inputs textarea{
	  border-radius: 10px;
	}
	textarea{
	  width: 165px;
	}
	.btnn{
	  padding: 20px 20px;
	  margin-left: 120px;
	 
	}
	
	.btn{
	  background-color: #0b2c41;
	  border-radius: 10px;
	  width:150px;
	  height: 40px;
	  font-weight: bold;
	  color: white;
	}
	
	.btn:hover {
	  background-color:  #154a6a;
	}
	
	.drop{
	  width: 170px;
	  height: 28px;
	  border-radius: 12px;
	  border: 1px solid black;
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
        <!-- Body content goes here -->
   
        <div class="inquiry">
           <h1>Inquiry Form</h1>
            <div class = "inquiry2">
           
                <form action="Insert" method="post" class="div2">
                    <div class="inputs">
                    <p>Select Inquiry type:</p>
                    <select id="dropdown" class ="drop" name="type" required>
                        <option disabled selected value="">Select Inquiry type</option>
                        <option value="Normal Inquiry"> Normal Inquiry </option>
                        <option value="Urgent Inquiry"> Urgent Inquiry </option>
                        <option value="Complain"> Complain </option>
                    </select>
                    </div>
                <div class="inputs">
                    <p>Full Name</p>
                    <input type="text" name="name" required>
                </div> 
                <div class="inputs">
                    <p>Phone</p>
                    <input type="tel" id="phone" name="phone" required>
                </div>
                <div class="inputs">
                    <p>Email</p>
                    <input type="email" name="email" required>
                </div>
                <div class="inputs">
                    <p>NIC</p>
                    <input type="text" name="nic"  placeholder="can't update again" required>
                </div>
                <div class="inputs">
                    <p>Title</p>
                    <input type="text" name="title" required>
                </div>
                <div class="inputs">
                    <p>Enter Inquiry</p>
                    <textarea  id="" cols="30" rows="2" name="inquiry" required></textarea>
                </div>
                <div class="btnn">
                    <Button class = "btn">Submit Inquiry</Button>
                </div>
            </form>
        </div> 
        </div>
        
        
  
    </div>  
    
    <script>
        const mobileInput = document.getElementById('phone');

        mobileInput.addEventListener('input', function () {
            const mobileNumber = mobileInput.value;

            // Regular expression to match only numeric values
            const numericPattern = /^\d+$/;

            if (!numericPattern.test(mobileNumber)) {
                alert('Mobile number must contain only numeric values.');
                mobileInput.value = ''; // Clear the input field
            }
        });
    </script>

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