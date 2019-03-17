/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Suraj
 */
public class valuser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
              String u=request.getParameter("username");
		String p=request.getParameter("password");
                Class.forName("com.mysql.jdbc.driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/girdhal","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from girdhal.newuser where name='?', pass1='?' ");
           
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
           out.println("welcome "+u);
           
          request.getRequestDispatcher("user.html").include(request, response);
          }
          else{
           response.sendRedirect("login.jsp");
          }
		if(u.equals("admin@gmail.com") && p.equals("admin"))
                {
                    
                    
                    
                    HttpSession session1;
                    session1 = request.getSession();
                    session1.setAttribute("name","true");
                    
                    request.getRequestDispatcher("user.html").include(request, response);
                    //request.getRequestDispatcher("admincarousel.html").include(request, response);
                    
                }
        else{
                    //request.getRequestDispatcher("index.html").include(request, response);
                    out.println("<div class='container'>");
                    out.println("<h3>Username or password error</h3>");
                    request.getRequestDispatcher("userlogin.html").include(request, response);
                    out.println("</div>");
                }
          
        }}
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(valuser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(valuser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(valuser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(valuser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
