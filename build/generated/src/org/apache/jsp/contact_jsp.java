package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import JavaEmail.JavaEmail;;
import javax.mail.MessagingException;;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"main.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>Contact Us</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");

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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Contact Us</title>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel='stylesheet' href='style.css' type='text/css' media='all' />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"central\">\n");
      out.write("\t\t<div class=\"content\">\n");
      out.write("\t\t\t<h1>Contact Form</h1>\n");
      out.write("\t\t\t<p>Send your comments through this form and we will get back to\n");
      out.write("\t\t\t\tyou.</p>\n");
      out.write("                        <div class=\"logo\">\n");
      out.write("\n");
      out.write("  <a href=\"index.html\"> <img src=\"L.jpg\" height=7% width=9%></a>\n");
      out.write("</div>\n");
      out.write("<div class=\"topnav\" id=\"myTopnav\">\n");
      out.write("  <a href=\"index.html\">Home</a>\n");
      out.write(" <div class=\"dropdown\">\n");
      out.write("    <button class=\"dropbtn\">Chips\n");
      out.write("      <i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-content\">\n");
      out.write("      <a href=\"#\">Backed</a>\n");
      out.write("      <a href=\"#\">Fried</a>\n");
      out.write("      <a href=\"#\">Crispy</a>\n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write(" </div>\n");
      out.write("\n");
      out.write(" <div class=\"dropdown\">\n");
      out.write(" <button class=\"dropbtn\">Login\n");
      out.write("      <i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-content\">\n");
      out.write("      <a href=\"signin.html\">Sign in</a>\n");
      out.write("      <a href=\"signup.html\">Sign Up</a>\n");
      out.write("      <a href=\"Alogin.html\">Admin Login</a>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <a href=\"#contact\">Contact</a>\n");
      out.write("  <a href=\"#about\">About</a>\n");
      out.write("<a href=\"#feedback\">Feedback</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        \n");
      out.write("    <div class=\"bg-image\">\n");
      out.write("        <img src=\"3.jpg\" height=\"100%\" width=\"100%\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"bg-text\">\n");
      out.write("   \n");
      out.write("    \n");
      out.write("     \n");
      out.write("        \n");
      out.write("        <form action=\"\" method=\"post\" align=\"center\">\n");
      out.write("           \n");
      out.write("                \n");
      out.write("                    \n");
      out.write("                      \n");
      out.write("                             <div class=\"jumbotron\" width=\"100%\">\n");
      out.write("                                 <div class=\"well well-lg\">\n");
      out.write("                                    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("        <label class=\"control-label col-sm-4\" for=\"email\"><div class=\"dc\">Enter Your Name:</div></label>\n");
      out.write("      <div class=\"col-sm-8\">\n");
      out.write("          <input type=\"text\" class=\"form-control\"  placeholder=\"Enter Name\" name=\"name\" required>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("                                         \n");
      out.write("    \n");
      out.write("        \n");
      out.write("         \n");
      out.write("   \n");
      out.write("      <label class=\"control-label col-sm-4\" for=\"email\"> <div class=\"dc\">Email:</div> </label>\n");
      out.write("         <div class=\"col-sm-8\">\n");
      out.write("         <input type=\"email\" class=\"form-control\"  placeholder=\"Enter email\" name=\"mail\">\n");
      out.write("         </div>\n");
      out.write("        \n");
      out.write("       <label class=\"control-label col-sm-4\" for=\"email\"> <div class=\"dc\">Feedback:</div> </label>\n");
      out.write("         <div class=\"col-sm-8\">\n");
      out.write("             <input type=\"text\" class=\"form-control\"  placeholder=\"Enter Your Feedback\" name=\"feedback\">\n");
      out.write("         </div>\n");
      out.write("                   \n");
      out.write("            \n");
      out.write("             \n");
      out.write("                                \n");
      out.write("         <input type=\"submit\" value='Submit' class=\"btn btn-warning\"></div></div>\n");
      out.write("                             \n");
      out.write("                             </div> </form> </div>   \n");
      out.write("\n");
      out.write("        \n");
      out.write("\t\t\t<div id=\"message\">\n");
      out.write("\t\t\t\t<form id=\"frmContact\" name=\"frmContact\" action=\"\" method=\"POST\"\n");
      out.write("\t\t\t\t\tnovalidate=\"novalidate\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                               <label class=\"control-label col-sm-4\" for=\"email\"> <div class=\"dc\">Name:</div> </label>\n");
      out.write("         <div class=\"col-sm-8\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<input type=\"text\"  class=\"form-control\" id=\"pp-name\" name=\"name\"\n");
      out.write("\t\t\t\t\t\t\tplaceholder=\"enter your name here\" title=\"Please enter your name\"\n");
      out.write("\t\t\t\t\t\t\tclass=\"required\" aria-required=\"true\" required>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"label\">Email:</div>\n");
      out.write("\t\t\t\t\t<div class=\"field\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"pp-email\" name=\"email\"\n");
      out.write("\t\t\t\t\t\t\tplaceholder=\"enter your email address here\"\n");
      out.write("\t\t\t\t\t\t\ttitle=\"Please enter your email address\" class=\"required email\"\n");
      out.write("\t\t\t\t\t\t\taria-required=\"true\" required>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"label\">Phone Number:</div>\n");
      out.write("\t\t\t\t\t<div class=\"field\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"pp-phone\" name=\"phone\"\n");
      out.write("\t\t\t\t\t\t\tplaceholder=\"enter your phone number here\"\n");
      out.write("\t\t\t\t\t\t\ttitle=\"Please enter your phone number\" class=\"required phone\"\n");
      out.write("\t\t\t\t\t\t\taria-required=\"true\" required>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"label\">Message:</div>\n");
      out.write("\t\t\t\t\t<div class=\"field\">\n");
      out.write("\t\t\t\t\t\t<textarea id=\"about-project\" name=\"message\"\n");
      out.write("\t\t\t\t\t\t\tplaceholder=\"enter your message here\"></textarea>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div id=\"mail-status\"></div>\n");
      out.write("\t\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"Send Message\"\n");
      out.write("\t\t\t\t\t\tid=\"send-message\" style=\"clear: both;\">\n");
      out.write("\t\t\t\t\t");

						if (null != message) {
							out.println("<div class='" + status + "'>"
									+ message + "</div>");
						}
					
      out.write("\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- content -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- central -->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
