/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Suraj
 */
public class SignupD extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        // Database name to access 
        String dbName = "girdhal"; 
        String dbUsername = "root"; 
        String dbPassword = ""; 
        String n=request.getParameter("name");
        String sn=request.getParameter("surname");
        String e=request.getParameter("mail");
        String a=request.getParameter("age");
        String p=request.getParameter("pass");
        String cp=request.getParameter("cpass");
        Class.forName(dbDriver); 
        
         try (Connection con = DriverManager.getConnection(dbURL + dbName, 
                    dbUsername,
                    dbPassword);
                
                 
                 //out.println("<b>Successfully Registered.</b>");
                    PreparedStatement st = con
                            .prepareStatement("insert into newuser values(?,?,?,?,?,?)")) {
               
               
                
                
               st.setString(1,n );
                // Same for second parameter
                st.setString(2, sn);
                st.setString(3, e);
                st.setString(4,a);
                st.setString(5, p);
                st.setString(6, cp);
                // Execute the insert command using executeUpdate()
                // to make changes in database
                int i=st.executeUpdate();  
if(i>0)  
            
           
         
            request.getRequestDispatcher("user.html").include(request, response);
        } }
        catch (Exception e) { 
        } 
    
        }
        
    

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
        processRequest(request, response);
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
        processRequest(request, response);
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
