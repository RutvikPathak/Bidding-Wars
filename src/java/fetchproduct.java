/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.CategoryTable;
import Model.ProductTable;
import Model.SubCategory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rutvik
 */
public class fetchproduct extends HttpServlet {

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
        
        response.setContentType("text/html;charset=PrintWriter out = response.getWriter()UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            
            int catid = Integer.parseInt(request.getParameter("catid"));
            System.out.println(request.getParameter("catid"));
            CategoryTable c = new CategoryTable();
            c.setCategoryID(catid);
            
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction tr = se.beginTransaction();
            
            
            Query q = se.createSQLQuery("select p.Product_ID "
                    + ", p.Product_Name,"
                    + " p.Product_Price ,"
                    + "(select g.Image_Path from graphic_table as g  where g.Product_ID =  p.Product_ID limit 1)\n" +
                    "from product_table as p where p.Category_ID=:cid");
            q.setInteger("cid", catid);
            
            List<Object[]> l = q.list();
            
            if(l.size() > 0)
            {
            request.setAttribute("Products", l);//Product of Antique & Collectable
            }
            
            
            if(catid  == 1)
            {
                request.setAttribute("pnm", "Antique & Collectibles");
                request.setAttribute("imgurl", "images/antique.jpg");
            }
            
            
            else if(catid == 2)
            {
                request.setAttribute("pnm", "Electronics");
                request.setAttribute("imgurl", "images/elec1.jpg");
            }
            else if(catid == 3)
            {
                request.setAttribute("pnm", "Fashion & Wearables");
                request.setAttribute("imgurl", "images/ba2.jpg");
            }
            else if(catid == 4)
            {
                request.setAttribute("pnm", "Furniture");
                request.setAttribute("imgurl", "images/f1.jpg");
            }
            else if(catid == 5)
            {
                request.setAttribute("pnm", "House_Appartment");
                request.setAttribute("imgurl", "images/house1.jpg");
            }
            else if(catid == 6)
            {
                request.setAttribute("pnm", "Jewellery");
                request.setAttribute("imgurl", "images/jewel1.jpg");
            }
            
            else if(catid == 7)
            {
                request.setAttribute("pnm", "Stock");
                request.setAttribute("imgurl", "images/stock.jpg");
            }
            
            else if(catid == 8)
            {
                request.setAttribute("pnm", "Vehicle");
                request.setAttribute("imgurl", "images/cars.jpg");
            }
            
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("product.jsp");
            requestDispatcher.forward(request, response);
                        
        }
        catch(Exception e){
            System.out.println(e.getMessage());
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
