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
public class orderPlaced extends HttpServlet {

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
        
        boolean flag=true;
        
        HttpSession session = request.getSession();
        
        String usname = (String)session.getAttribute("suname");
        String name = (String)session.getAttribute("sname");
        String address = (String)session.getAttribute("saddress");
        String email = (String)session.getAttribute("semail");
        String mno = (String)session.getAttribute("smno");
        String pin = (String)session.getAttribute("spin");
        ArrayList<Cart> cl = (ArrayList<Cart>)session.getAttribute("cartInfo");
        
        for(int i=0;i<cl.size();i++){
            
            OrdersTable o = new OrdersTable();
            OrderDAO od = new OrderDAO();
            o.setUname(usname);
            o.setName(name);
            o.setUaddress(address);
            o.setUemail(email);
            o.setUcontact(usname);
            o.setPincode(pin);
            o.setBreed(cl.get(i).getBreed());
            o.setAge(cl.get(i).getAge());
            o.setGender(cl.get(i).getGender());
            o.setPrice(cl.get(i).getPrice());
            o.setPermission("NULL");
            if(od.save(o)){
                flag=true;
            }
            else{
                flag=false;
            }
            
        }
        if(flag==true){
            CartDAO cd = new CartDAO();
            cd.deleteAllCart();
            int count = (int)(Integer)session.getAttribute("count");
            count = 0;
            session.setAttribute("count",count);
            response.sendRedirect("SuccessfullPlaced.jsp");
        }
        else{
            out.print("<script>");
            out.print("alert('Not able to place order');");
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
