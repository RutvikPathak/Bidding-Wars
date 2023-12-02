/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.DeliveryBoyTable;
import Model.LoginTable;
import Model.RoleTable;
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
public class SupplierRegestration extends HttpServlet {

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
            Transaction t = se.beginTransaction();
            
            String sfname="";
            String slname="";
            String saddress="";
            String scontact="";
            String photo="";
            String semail="";
            String spwd="";
            
            
            
            
            
            // creates FileItem instances which keep their content in a temporary file on disk
            FileItemFactory factory = new DiskFileItemFactory();
            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            //get the list of all fields from request
            List<FileItem> fields = upload.parseRequest(request);
            // iterates the object of list
            Iterator<FileItem> it = fields.iterator();
            //getting objects one by one
            while (it.hasNext()) 
            {
                //assigning coming object if list to object of FileItem
                FileItem fileItem = it.next();
                //check whether field is form field or not
                boolean isFormField = fileItem.isFormField();

                if (isFormField) {
                    //get the filed name 
                    String fieldName = fileItem.getFieldName();
                    if (fieldName.equals("sfname")) {
                        //getting value of field
                        sfname = fileItem.getString();
                    } else if (fieldName.equals("slname")) {
                        //getting value of field
                        slname = fileItem.getString();
                    } else if (fieldName.equals("saddress")) {
                        //getting value of field
                        saddress =fileItem.getString();
                    } else if (fieldName.equals("scontact")) {
                        //getting value of field
                        scontact = fileItem.getString();
                    } else if (fieldName.equals("spassword")) {
                        //getting value of field
                        spwd = fileItem.getString();
                    } else if (fieldName.equals("semail")) {
                        //getting value of field
                        semail =fileItem.getString();
                    } 
                } 
                
                else 
                {
                    //getting name of file
                    photo = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                    String extension = photo.substring(photo.indexOf(".") + 1, photo.length());;
                    //rename file...concate name and extension
                    photo = sfname + "." + extension;
                    //add multiple images into arraylist
                    out.println(photo);
                    try {
                        String filePath = "C:/Users/Rutvik/Desktop/Folder/Project work/Bidding Wars/web/images/supplier/";
                        out.println(filePath + photo);
                        fileItem.write(new File(filePath + photo));
                    } 
                    catch (Exception ex) {
                        out.println(ex.toString());
                    }

                }
            }
            
            
            
            RoleTable rt=new RoleTable();
            rt.setRoleID(3);
            
            
            LoginTable lt=new LoginTable();
            lt.setEmailAddress(semail);
            lt.setPassword(spwd);
            lt.setRoleID(rt);
            se.save(lt);
            
            
            DeliveryBoyTable db=new DeliveryBoyTable();
            
            
            db.setDeliveryBoyFirstName(sfname);
            db.setDeliveryBoyLastName(slname);
            db.setDeliveryBoyAddress(saddress);
            db.setDeliveryBoyContact(scontact);
            db.setDeliveryboyProfilePic(photo);
            db.setDeliveryBoyLoginID(lt);
            
            se.save(db);
            t.commit();
                    
            
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("FetchSupplier");
            requestDispatcher.forward(request, response);
             
             
             
        }
        catch(Exception e)
        {
            System.out.println(e);
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
