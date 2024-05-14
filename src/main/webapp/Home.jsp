<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="home.css">
	<style>
	
	@charset "ISO-8859-1";

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('images/train.jpg');
    background-size: cover;
}

.header {
    background-color:rgba(255, 255, 255,0.7);
    background-blend-mode: lighten ;
    color: rgb(1, 1, 1);
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
    color: rgb(0, 0, 0);
    text-decoration: none;
    font-weight: bold;
    transition: 0.3s;
    font-size: 18px;
    transition: font-size 0.3s;
}

.navigation a:hover {
    color: #b58408;
    font-size: 22px;
}

.body-content {
    height:400px;
    padding: 20px;
    color:white;
    display: flex;
    justify-content: center;
    align-items: flex-start;
}

.footer {
    background-color: rgba(255, 255, 255,0.7);
    color: rgb(0, 0, 0);
    padding: 0px 0;
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
    padding: 40px;
    max-width: 400px;
    width: 100%;
}

.signup-container h2 {
    margin-bottom: 20px;
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

h1{
    font-size: 75px;
    color: #ffffff;
    text-align: top;
    text-align: center;
    text-shadow: 
    -3px -1px 0 #ff5656,  
    1px -3px 0 #e9d30e,
    -3px 2px 0 #065be3,
    2px 3px 0 #051c6d;
    padding-bottom: 0px;
    padding-top: 0px;
    margin-bottom: 0px;
}

.desc{
    align-self: center;
    padding: 10px;
    background: linear-gradient(to right,rgba(255, 149, 37, 0.7), rgba(51, 114, 240, 0.7) );
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: center;
    align-items: center;
}

.desc p{
    text-align: center;
    width: 80%;
    font-size: 22px;
    font-family: 'Times New Roman', Times, serif;
    color: #ffffff;
    margin-bottom: 0px;
}

.slideshow-container {
    width: 1500px; /* Set your desired fixed width */
    height: 400px; /* Set your desired fixed height */
    overflow: hidden;
    position: relative;
    border: 0px solid #333333ac;
    margin-top: 0px;
    padding: 0;
    padding-top: 0px;
    padding-bottom: 0px;
}

.slide {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 100%;
    transition: left 0.5s ease-in-out;
}

.slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.prev, .next {
    cursor: pointer;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    font-size: 24px;
    color: white;
    background-color: #33333369;
    padding: 10px 15px;
    border: none;
    outline: none;
}

.prev {
    left: 10px;
}

.next {
    right: 10px;
}
	
	
	</style>
</head>

<body>
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="#">View Train</a></li>
                <li><a href="#">Book a Ticket</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="InqInsert.jsp">Inquiry</a></li>
            </ul>
        </nav>
    </header>

    <h1>Easy Train Reservation</h1>

    <div class="body-content">
        
        <div class="slideshow-container">
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1442570468985-f63ed5de9086?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHRyYWlufGVufDB8fDB8fHww" alt="Slide 1">
            </div>
            <div class="slide">
                <img src="https://f.hubspotusercontent20.net/hubfs/546379/Nine%20Arches%20Bridge.jpg" alt="Slide 2">
            </div>
            <div class="slide">
                <img src="https://cdn.happyrail.com/uploads/homepage_backgrounds/mountains.jpg" alt="Slide 3">
            </div>
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1556695736-d287caebc48e?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhdGlvbnxlbnwwfHwwfHx8MA%3D%3D" alt="Slide 4">
            </div>
        </div>
        
            <button class="prev">&#10094;</button>
            <button class="next">&#10095;</button>
        </div>
    
        <script>
		    let slideIndex = 0;
		    const slides = document.querySelectorAll('.slide');
		    const totalSlides = slides.length;
		
		    const prevButton = document.querySelector('.prev');
		    const nextButton = document.querySelector('.next');
		
		    prevButton.addEventListener('click', () => {
		        slideIndex = (slideIndex - 1 + totalSlides) % totalSlides;
		        updateSlide();
		    });
		
		    nextButton.addEventListener('click', () => {
		        slideIndex = (slideIndex + 1) % totalSlides;
		        updateSlide();
		    });
		
		    function updateSlide() {
		        slides.forEach(slide => {
		            slide.style.left = '100%';
		        });
		
		        slides[slideIndex].style.left = '0';
		    }
		
		    // Function to automatically transition to the next slide
		    function autoTransition() {
		        slideIndex = (slideIndex + 1) % totalSlides;
		        updateSlide();
		    }
		
		    // Set an interval to auto-transition every 3 seconds (adjust as needed)
		    const autoTransitionInterval = setInterval(autoTransition, 3000); // 3000 milliseconds (3 seconds)
		
		    // Stop auto-transition when the user clicks the prev or next buttons
		    prevButton.addEventListener('click', () => {
		        clearInterval(autoTransitionInterval);
		    });
		
		    nextButton.addEventListener('click', () => {
		        clearInterval(autoTransitionInterval);
		    });
	</script>
    <div class="desc">
        <P>
          Welcome to Easy Train Reservation System, where booking your train tickets is as simple as a smile! Our user-friendly website ensures that planning your journeys is a breeze, 
      offering you a seamless experience from start to finish. With just a few clicks, you can effortlessly search, select, and secure your train tickets, leaving you with more time to focus on the exciting adventures ahead. 
      We understand that travel should be easy and delightful, so we've designed our platform to be intuitive and stress-free. Let us be your travel companion, making your train reservations adorable and effortless, just like your dream vacation!
        </P>  
      </div>

		  <!-- footer -->
    <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
        </div>
    </footer>
</body>

</html>
    