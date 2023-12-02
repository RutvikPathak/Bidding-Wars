/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.LoginTable;
import Model.RoleTable;
import Model.RoleTable_;
import Model.UserTable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Rutvik
 */
public class Authentication extends HttpServlet {

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
        try 
        {
            /* TODO output your page here. You may use following sample code. */
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t=se.beginTransaction();
            
            /* Step 1: Get the value from there field */
            String fname="";
            String lname="";
            String address="";
            String contact="";
            String email="";
            String photo="";
            String pwd="";
        
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
                        fname = fileItem.getString();
                    } else if (fieldName.equals("Lname")) {
                        //getting value of field
                        lname = fileItem.getString();
                    } else if (fieldName.equals("Address")) {
                        //getting value of field
                        address =fileItem.getString();
                    } else if (fieldName.equals("Contact")) {
                        //getting value of field
                        contact = fileItem.getString();
                    } else if (fieldName.equals("Email")) {
                        //getting value of field
                        email = fileItem.getString();
                    } else if (fieldName.equals("Password")) {
                        //getting value of field
                        pwd =fileItem.getString();
                    } 
                } 
                
                else 
                {
                    //getting name of file
                    photo = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                    String extension = photo.substring(photo.indexOf(".") + 1, photo.length());;
                    //rename file...concate name and extension
                    photo = fname + "." + extension;
                    //add multiple images into arraylist
                    out.println(photo);
                    try {
                        String filePath = "C:/Users/Rutvik/Desktop/Folder/Project work/Bidding Wars/web/images/users/";
                        out.println(filePath + photo);
                        fileItem.write(new File(filePath + photo));
                    } 
                    catch (Exception ex) {
                        out.println(ex.toString());
                    }

                }

            }
            System.out.println("image uploader" + fname + lname + address + contact + email + pwd + photo);
            /* Step 2: Create there respective object of the table */
            RoleTable rt= new RoleTable();
            rt.setRoleID(2);// Set the Value to user because it is regestration Form of User
            
            
            
            LoginTable lt=new LoginTable();
            lt.setEmailAddress(email);// Set email address in the database in Login Table -> email coloum
            lt.setPassword(pwd);// Set password in the database in Login Table -> password coloum
            lt.setRoleID(rt);// Set role ID from the Role table  in Login Table -> roleID coloum
            se.save(lt);// save the login table
            
            UserTable ut=new UserTable();
            ut.setUserFirstName(fname);// Set First Name in the database in User Table -> First_Name coloum
            ut.setUserLastName(lname);// Set Last Name in the database in User Table -> Last_Name coloum
            ut.setUserAddress(address);// Set Address in the database in User Table -> Address coloum
            ut.setUserContact(contact);// Set Contact in the database in User Table -> Contact coloum
            ut.setUserProfilePic(photo);// Set Image in the database in User Table -> UserProfilePic coloum
            ut.setUserLoginID(lt);// Set Login ID from the Role table  in User Table -> LoginID coloum
            se.save(ut);// save the user table
            
            t.commit();
            String subject="Registration successful with Bidding Wars";
            String message="Congratulation ! You had Successful registered with Bidding Wars. Explore More to win more.";
            String[] recipients = new String[]{email};
            String msg="";
            MailUtil m = new MailUtil();
            if(m.sendMail(recipients, subject, message)){
                msg = "Registered. Mail Sent On your email address";
            }
            else{
                msg="Mail not sent";
            }
                   /* Step 3 : RequestDispatcher is the last step in which it will 
                               redirect to the dezireable page   */ 
            
            request.setAttribute("msg", msg);
            RequestDispatcher r = request.getRequestDispatcher("index.jsp");
            r.forward(request, response);
            
            
            
            

        }catch(Exception e)
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
