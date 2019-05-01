/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Modal.Cart;
import Modal.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class addToCart extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        String breed = request.getParameter("breed");
        String usname = request.getParameter("usname");
        String gender = request.getParameter("gen");
        String price = request.getParameter("price");
        int age = Integer.parseInt(request.getParameter("ages"));
        int count = Integer.parseInt(request.getParameter("cartt"));
        Cart c = new Cart();
        CartDAO cd = new CartDAO();
        
        c.setBreed(breed);
        c.setGender(gender);
        c.setUsname(usname);
        c.setPrice(price);
        c.setAge(age);
        if(cd.save(c)){
              count++;
              
              out.print("<script>");
              out.print("alert('Item Added to Cart')");
              out.print("</script>");
              
              HttpSession session = request.getSession();
              session.setAttribute("count", count);
              response.sendRedirect("dashboard.jsp");
        }
        else{
              out.print("<script>");
              out.print("alert('Item Not Added to Cart');");
              out.print("location='dashboard.jsp';");
              out.print("</script>");
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
