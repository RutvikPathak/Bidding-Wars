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
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Rutvik
 */
public class updateUserProfile extends HttpServlet {

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
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = se.beginTransaction();
            HttpSession session = request.getSession();
            ArrayList<UserTable> al2 = (ArrayList<UserTable>) session.getAttribute("userDetails");
            UserTable ut = null;
            if (al2.size() > 0) {
                ut = al2.get(0);
            }
            Integer roleID = Integer.parseInt(session.getAttribute("roleId").toString());

            RoleTable r = new RoleTable();
            r.setRoleID(roleID);

            String ufname = "";
            String ulname = "";
            String uaddress = "";
            String ucontact = "";
            String pwd = "";
            String photo = "";
            String uemail = "";
            String lid = "";
            // creates FileItem instances which keep their content in a temporary file on disk
            FileItemFactory factory = new DiskFileItemFactory();
            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            //get the list of all fields from request
            List<FileItem> fields = upload.parseRequest(request);
            // iterates the object of list
            Iterator<FileItem> it = fields.iterator();

            //getting objects one by one
            while (it.hasNext()) {
                //assigning coming object if list to object of FileItem
                FileItem fileItem = it.next();
                //check whether field is form field or not
                boolean isFormField = fileItem.isFormField();

                if (isFormField) {
                    //get the filed name 
                    String fieldName = fileItem.getFieldName();
                    if (fieldName.equals("Fname")) {
                        //getting value of field
                        ufname = fileItem.getString();
                    } else if (fieldName.equals("Lname")) {
                        //getting value of field
                        ulname = fileItem.getString();
                    } else if (fieldName.equals("Address")) {
                        //getting value of field
                        uaddress = fileItem.getString();
                    } else if (fieldName.equals("Contact")) {
                        //getting value of field
                        ucontact = fileItem.getString();
                    } else if (fieldName.equals("Email")) {
                        //getting value of field
                        uemail = fileItem.getString();
                    } else if (fieldName.equals("pwd")) {
                        //getting value of field
                        pwd = fileItem.getString();
                    } else if (fieldName.equals("lid")) {
                        //getting value of field
                        lid = fileItem.getString();
                    }
                } else {
                    //getting name of file
                    photo = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                    String extension = photo.substring(photo.indexOf(".") + 1, photo.length());;
                    //rename file...concate name and extension
                    photo = ufname + "." + extension;
                    
                    //add multiple images into arraylist
                    try {
                        String filePath = "C:/Users/Rutvik/Desktop/Folder/Project work/Bidding Wars/web/images/users/";
                        out.println(filePath + photo);
                        
                        fileItem.write(new File(filePath + photo));
                    } catch (Exception ex) {
                        out.println(ex.toString());
                    }

                }
            }

            LoginTable lt = new LoginTable();
            lt.setLoginID(Integer.parseInt(lid));
            lt.setEmailAddress(uemail);
            lt.setPassword(pwd);
            lt.setRoleID(r);
            se.update(lt);

            ut.setUserFirstName(ufname);// Set First Name in the database in User Table -> First_Name coloum
            ut.setUserLastName(ulname);// Set Last Name in the database in User Table -> Last_Name coloum
            ut.setUserAddress(uaddress);// Set Address in the database in User Table -> Address coloum
            ut.setUserContact(ucontact);// Set Contact in the database in User Table -> Contact coloum
            ut.setUserProfilePic(photo);// Set Image in the database in User Table -> UserProfilePic coloum
            ut.setUserLoginID(lt);// Set Login ID from the Role table  in User Table -> LoginID coloum
            se.update(ut);// save the user table
            t.commit();
            try {
                Thread.sleep(1500);
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("User_Index.jsp");

        } catch (Exception e) {
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
