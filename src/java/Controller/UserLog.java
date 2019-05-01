/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Modal.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class UserLog extends HttpServlet {

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
           
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String status = request.getParameter("status");
        if(status.equals("admin")){
            Admin ad = new Admin();
            AdminDAO ado = new AdminDAO();
            ad.setName(uname);
            ad.setPwd(pass);
            if(ado.check(ad))
            {
                    HttpSession session = request.getSession();
                    session.setAttribute("admin",ad);
                    session.setAttribute("uname",ad.getName());
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='AdminDashboard.jsp';");
                    out.println("</script>");
            }
            else
            {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Wrong Username Or password!');");
                    out.println("location='Login.jsp';");
                    out.println("</script>");
            }
        }
        else if(status.equals("Customer")){
            Customer c = new Customer();
            CustomerDAO cd = new CustomerDAO();
            c.setUname(uname);
            c.setPass(pass);
            CartDAO dc = new CartDAO();
            ArrayList<Pet> pl = null;
            PetDAO pd = new PetDAO();
            pl = pd.getAllPets();
            if(cd.check(c))
            {
                ArrayList<Customer> c1 = cd.getInfo(uname);
                
                int count = dc.cartSize(uname);
                
                    HttpSession session = request.getSession();
                    session.setAttribute("customer",c1);
                    session.setAttribute("uname",uname);
                    session.setAttribute("petsInfo",pl);
                    session.setAttribute("count",count);
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='dashboard.jsp';");
                    out.println("</script>");
            }
            else
            {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Wrong Username Or password!');");
                    out.println("location='Login.jsp';");
                    out.println("</script>");
            }
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
