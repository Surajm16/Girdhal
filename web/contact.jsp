<%-- 
    Document   : contact
    Created on : Mar 21, 2019, 12:15:05 AM
    Author     : Suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="JavaEmail.JavaEmail;"%>
<%@ page import="javax.mail.MessagingException;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Contact Us</title>
        <style>
            body {margin:0;}

.navbar {
  overflow: hidden;
  background-color: #ffff99;
  position: fixed;
  top: 0;
  width: 100%;
}
.navbar a {
  float: left;
  display: block;
  color: #ffff99;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ffff99;
  color: #ffff99;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}



.box-sizing: border-box{
    
}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 50%;
  }
}
body {margin:0;}

.navbar {
  overflow: hidden;
  background-color: #ffff99;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #ffff99;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ffff99;
  color: #ffff99;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}
.p
{
    margin-top: 300px;
}
.container
{
    padding:16px;
}

* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.logo{
float: left;
 
  
  text-decoration: none;
  
   
}

.topnav {
  overflow: hidden;
  background-color: white;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;

}

.topnav a:hover {
  background-color: #ffff99;
  color: black;
}



.topnav .icon {
  display: none;
}


  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: black;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ffff99;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color:#ffff66;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.icon-bar {
  position: fixed;
  right: 0%;
  
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
  background-color: orange;
}

.facebook {
  background: #3B5998;
  color: white;
}

.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.instagram {
  background: #6f6fdc;
  color: white;
}



.content {
  margin-left: 75px;
  font-size: 30px;
}

.bg-image {
  /* The image used */
  
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  width: 100%;
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 90%;
  padding: 20px;
  text-align: center;
}
.dc{
    color:black;
}
.jumbotron{
    margin-top: 0;
   margin-bottom: 0;
}
.well-lg{
     margin-top: 0;
    margin-bottom: 0;
}

.form-group{
   margin-bottom: 0; 
}
.bg-text{
     margin-bottom: 0; 
}
        </style>
    </head>
    <body>
      
<%
	String message = null;
	String status = null;
	if (request.getParameter("submit") != null) {
		JavaEmail javaEmail = new JavaEmail();
		javaEmail.setMailServerProperties();
		String emailSubject = "Contact Form using Java JSP GMail";
		String emailBody = "";
		if (request.getParameter("name") != null) {
			emailBody = "Sender Name: " + request.getParameter("name")
					+ "<br>";
		}
		if (request.getParameter("email") != null) {
			emailBody = emailBody + "Sender Email: "
					+ request.getParameter("email") + "<br>";
		}
		if (request.getParameter("phone") != null) {
			emailBody = emailBody + "Sender Phone: "
					+ request.getParameter("phone") + "<br>";
		}
		if (request.getParameter("message") != null) {
			emailBody = emailBody + "Message: " + request.getParameter("message")
					+ "<br>";
		}
		javaEmail.createEmailMessage(emailSubject, emailBody);
		try {
			javaEmail.sendEmail();
			status = "success";
			message = "Email sent Successfully!";
                }
                catch(MessagingException me) {
			status = "error";
			message = "Error in Sending Email!";
		}
                
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact Us</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='style.css' type='text/css' media='all' />
</head>
<body>
				
                        <div class="logo">

  <a href="index.html"> <img src="L.jpg" height=7% width=9%></a>
</div>
<div class="topnav" id="myTopnav">
  <a href="index.html">Home</a>
 <div class="dropdown">
    <button class="dropbtn">Chips
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Backed</a>
      <a href="#">Fried</a>
      <a href="#">Crispy</a>
    </div>
     
 </div>

 <div class="dropdown">
 <button class="dropbtn">Login
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="signin.html">Sign in</a>
      <a href="signup.html">Sign Up</a>
      <a href="Alogin.html">Admin Login</a>
    </div>
  </div>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
<a href="#feedback">Feedback</a>
</div>

        
    <div class="bg-image">
        <img src="3.jpg" height="100%" width="100%">
    </div>
    <div class="bg-text">
        <h1>Contact Form</h1>
			<p>Send your comments through this form and we will get back to
				you.</p>
        <div class="jumbotron" weight="100" >
                                 <div class="well well-lg">
                                    
    <div class="form-group">
			<div id="message">
				<form id="frmContact" name="frmContact" action="" method="POST"
					novalidate="novalidate">
					
                                               <label class="control-label col-sm-4" for="email"> <div class="dc">Name:</div> </label>
                                    <div class="col-sm-8">
					
						<input type="text"  class="form-control"  name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
					</div>
					                  <label class="control-label col-sm-4" for="email"> <div class="dc">Email:</div> </label>
                                          <div class="col-sm-8">
				
						<input type="email"  class="form-control"  name="name"
							placeholder="enter your email here" title="Please enter your email"
						 required>
					</div>
                                            
					  <label class="control-label col-sm-4" for="email"> <div class="dc">Phone:</div> </label>
                                          <div class="col-sm-8">
						<input type="text"  class="form-control"  name="name"
							placeholder="enter your phone here" title="Please enter your phone"
							class="required" aria-required="true" required>
					</div>
					<label class="control-label col-sm-4" for="email"> <div class="dc">Message:</div> </label>
                                          <div class="col-sm-8">
						<input type="text"  class="form-control"  name="name"
							placeholder="enter your message here" title="Please enter message"
							class="required" aria-required="true" required>
					</div>
					
					<input type="submit" name="submit" value="Send Message" class="btn btn-warning"
						 >
					<%
						if (null != message) {
							out.println("<div class='" + status + "'>"
									+ message + "</div>");
						}
					%>
				</form>
                        </div>			</div>
		</div>
		<!-- content -->
        </div></div></div>
	<!-- central -->

    </body>
</html>
