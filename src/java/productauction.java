/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.AuctionParticipantTable;
import Model.AuctionTable;
import Model.ProductTable;
import Model.UserTable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rutvik
 */
public class productauction extends HttpServlet {

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
        try {
            /* TODO output your page here. You may use following sample code. */
            int prid = Integer.parseInt(request.getParameter("prid"));
            int price = Integer.parseInt(request.getParameter("price"));
            System.out.println(prid + "&&***&&" + price);

            HttpSession hs = request.getSession();
            ArrayList<UserTable> al1 = (ArrayList<UserTable>) hs.getAttribute("userDetails");
            Integer aid = Integer.parseInt(hs.getAttribute("auctionID").toString());

            /* TODO output your page here. You may use following sample code. */
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = se.beginTransaction();

            int pid = Integer.parseInt(request.getParameter("prid"));
            ProductTable p = new ProductTable();
            p.setProductID(pid);

            UserTable u = null;
            if (al1.size() > 0) {
                u = al1.get(0);
            }

            AuctionTable a = new AuctionTable();
            a.setAuctionID(aid);

            Criteria cr = se.createCriteria(AuctionParticipantTable.class);
            cr.add(Restrictions.eq("participantUserID", u));
            cr.add(Restrictions.eq("auctionID", a));
            ArrayList<AuctionParticipantTable> al = (ArrayList<AuctionParticipantTable>) cr.list();

            
            if (al.size() > 0) {
                AuctionParticipantTable au = al.get(0);
                au.setPrice(price);
                au.setBidTime(java.time.LocalTime.now().toString());
                se.update(au);
            } else {
                AuctionParticipantTable au = new AuctionParticipantTable();
                au.setParticipantUserID(u);
                au.setPrice(price);
                au.setAuctionID(a);
                au.setBidTime(java.time.LocalTime.now().toString());
                se.save(au);
            }

            t.commit();

            response.sendRedirect("startAuction");

        } catch(Exception e)
        {
            out.println(e.getMessage());
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
