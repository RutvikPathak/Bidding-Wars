/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.AdminTable;
import Model.DeliveryBoyTable;
import Model.LoginTable;
import Model.RoleTable;
import Model.UserTable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rutvik
 */
public class Login extends HttpServlet {

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
            HttpSession session = request.getSession();
            winnerAuctionThread th = new winnerAuctionThread();
            th.start();
            /* TODO output your page here. You may use following sample code. */
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = se.beginTransaction();

            String msg = "";
            String path = "";

            /* Step 1: Create the String Variable which will get the value from the form field  */
            String email = request.getParameter("Email");//get the Email ID from textbox whose name is Email
            String pwd = request.getParameter("Password");//get the Password from textbox whose name is pPassword

            /*Step 2: For execution the query Criteria will use  */
            Criteria cr = se.createCriteria(LoginTable.class);//select * from Login Table

            cr.add(Restrictions.ilike("emailAddress", email, MatchMode.EXACT));// WHERE EmailAddress (from Login Table Model) is equal String Variable of email
            cr.add(Restrictions.ilike("password", pwd, MatchMode.EXACT)); // Password (from Login Table Model) is equal String Variable of pwd

            /* Step 3 : Create the ArrayList which type cast criteria list 
             The Entire Row of Login table will be fetch */
            ArrayList<LoginTable> al = (ArrayList<LoginTable>) cr.list();

            if (al.size() > 0)/*if the following row is existing in database
             it will return object of that row in arraylist
             hence if object is returned then al.size() 
             will be grater than zero  */ {
                LoginTable l = al.get(0); // Get the list whose index is 0 which is assign to login table
                session.setAttribute("loginId", l.getLoginID());
                Integer roleID = l.getRoleID().getRoleID();
                session.setAttribute("roleId", roleID);
                /*if obj is returned then get it from arraylist
                 RoleTable roleID =  if role ID is of User*/
                if (roleID == 1) // if role ID is of Admin
                {

                    path = "Admin_Index.jsp";
                } else if (roleID == 2) {

                    Criteria cr1 = se.createCriteria(UserTable.class);
                    cr1.add(Restrictions.eq("userLoginID", l));
                    ArrayList<UserTable> al1 = (ArrayList<UserTable>) cr1.list();
                    if (al1.size() > 0) {
                        UserTable u = al1.get(0);
                        session.setAttribute("userDetails", al1);
                    }
                    path = "User_Index.jsp";
                } else if (roleID == 3) // if role ID is of Supplier
                {
                    Criteria cr3 = se.createCriteria(DeliveryBoyTable.class);
                    cr3.add(Restrictions.eq("deliveryBoyLoginID", l));
                    ArrayList<DeliveryBoyTable> al3 = (ArrayList<DeliveryBoyTable>) cr3.list();
                    System.out.println(al3);
                    if (al3.size() > 0) {
                        DeliveryBoyTable d = al3.get(0);
                        session.setAttribute("SupplierDetails", al3);
                    }
                    path = "Supplier_Index.jsp";
                }

            } else // if  Email and Password is Not Existing in database
            {
                msg = "Invalid email or password!";
                path = "index.jsp";
            }

            /*Step 4 :RequestDispatcher is use to redirect page 
             with there content */
            RequestDispatcher rd = request.getRequestDispatcher(path);
            rd.forward(request, response);
        } catch (HibernateException | ServletException | IOException e) {
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
