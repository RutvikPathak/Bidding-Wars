/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.AuctionParticipantTable;
import Model.AuctionTable;
import Model.ProductTable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rutvik
 */
public class startAuction extends HttpServlet {

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
            HttpSession hs = request.getSession();
            int pid = Integer.parseInt(hs.getAttribute("prid").toString());

            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction tr = se.beginTransaction();

            Query q = se.createSQLQuery(" select p.Product_ID , "
                    + "p.Product_Name , "
                    + " p.Product_Price ,"
                    + " p.Product_Status ,"
                    + "p.User_ID ,"
                    + "g.Image_Path , "
                    + "a.AuctionEndDateTime "
                    + " from product_table as p join graphic_table as g on g.Product_ID = p.Product_ID"
                    + " join auction_table as a on p.Product_ID = a.Product_AuctionID "
                    + " where p.Product_ID=:pr");

            q.setInteger("pr", pid);

            List<Object[]> l = q.list();

            if (l.size() > 0) {
                hs.setAttribute("auctionprod", l);
            }
            Integer aid = Integer.parseInt(hs.getAttribute("auctionID").toString());
            AuctionTable a = new AuctionTable();
            a.setAuctionID(aid);
            
            
            Criteria cr = se.createCriteria(AuctionParticipantTable.class);
            cr.add(Restrictions.eq("auctionID", a));
            ArrayList<AuctionParticipantTable> al = (ArrayList<AuctionParticipantTable>) cr.list();
            if (al.size() > 0) {
                hs.setAttribute("bids", al);
            }

            response.sendRedirect("auction.jsp");
//            RequestDispatcher rd = request.getRequestDispatcher("auction.jsp");
//            rd.forward(request, response);
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
