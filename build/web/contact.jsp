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
	<div id="central">
		<div class="content">
			<h1>Contact Form</h1>
			<p>Send your comments through this form and we will get back to
				you.</p>
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
   
    
     
        
        <form action="" method="post" align="center">
           
                
                    
                      
                             <div class="jumbotron" width="100%">
                                 <div class="well well-lg">
                                    
    <div class="form-group">
        <label class="control-label col-sm-4" for="email"><div class="dc">Enter Your Name:</div></label>
      <div class="col-sm-8">
          <input type="text" class="form-control"  placeholder="Enter Name" name="name" required>
          
          
      </div>
                                         
    
        
         
   
      <label class="control-label col-sm-4" for="email"> <div class="dc">Email:</div> </label>
         <div class="col-sm-8">
         <input type="email" class="form-control"  placeholder="Enter email" name="mail">
         </div>
        
       <label class="control-label col-sm-4" for="email"> <div class="dc">Feedback:</div> </label>
         <div class="col-sm-8">
             <input type="text" class="form-control"  placeholder="Enter Your Feedback" name="feedback">
         </div>
                   
            
             
                                
         <input type="submit" value='Submit' class="btn btn-warning"></div></div>
                             
                             </div> </form> </div>   

        
			<div id="message">
				<form id="frmContact" name="frmContact" action="" method="POST"
					novalidate="novalidate">
					
                                               <label class="control-label col-sm-4" for="email"> <div class="dc">Name:</div> </label>
         <div class="col-sm-8">
					
						<input type="text"  class="form-control" id="pp-name" name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
					</div>
					<div class="label">Email:</div>
					<div class="field">
						<input type="text" id="pp-email" name="email"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email"
							aria-required="true" required>
					</div>
					<div class="label">Phone Number:</div>
					<div class="field">
						<input type="text" id="pp-phone" name="phone"
							placeholder="enter your phone number here"
							title="Please enter your phone number" class="required phone"
							aria-required="true" required>
					</div>
					<div class="label">Message:</div>
					<div class="field">
						<textarea id="about-project" name="message"
							placeholder="enter your message here"></textarea>
					</div>
					<div id="mail-status"></div>
					<input type="submit" name="submit" value="Send Message"
						id="send-message" style="clear: both;">
					<%
						if (null != message) {
							out.println("<div class='" + status + "'>"
									+ message + "</div>");
						}
					%>
				</form>
			</div>
		</div>
		<!-- content -->
	</div>
	<!-- central -->

    </body>
</html>
