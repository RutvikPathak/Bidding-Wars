/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.AuctionTable;
import Model.CategoryTable;
import Model.GraphicTable;
import Model.ProductTable;
import Model.SubCategory;
import Model.UserTable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
public class AddProduct extends HttpServlet {

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

            ArrayList<String> al = new ArrayList<>();
            String productname = "";
            String status = "";
            String description = "";
            int catid = 0;
            int subcatid = 0;
            int price = 0;
            String photo = "1";
            String stime = "";
            String etime = "";

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
                    if (fieldName.equals("productname")) {
                        //getting value of field
                        productname = fileItem.getString();
                    } else if (fieldName.equals("status")) {
                        //getting value of field
                        status = fileItem.getString();
                    } else if (fieldName.equals("cat")) {
                        //getting value of field
                        catid = Integer.parseInt(fileItem.getString());
                    } else if (fieldName.equals("subcat")) {
                        //getting value of field
                        subcatid = Integer.parseInt(fileItem.getString());
                    } else if (fieldName.equals("description")) {
                        //getting value of field
                        description = fileItem.getString();
                    } else if (fieldName.equals("price")) {
                        //getting value of field
                        price = Integer.parseInt(fileItem.getString());
                    } else if (fieldName.equals("stime")) {
                        //getting value of field
                        stime = fileItem.getString();
                    } else if (fieldName.equals("etime")) {
                        //getting value of field
                        etime = fileItem.getString();
                    }
                } else {
                    //getting name of file
                    photo = new File(fileItem.getName()).getName();
                    //get the extension of file by diving name into substring
                    String extension = photo.substring(photo.indexOf(".") + 1, photo.length());;
                    //rename file...concate name and extension
                    photo = productname + al.size() + "." + extension;
                    //add multiple images into arraylist
                    al.add(photo);

                    try {
                        String filePath = "C:/Users/Rutvik/Desktop/Folder/Project work/Bidding Wars/web/images/product/";
                        fileItem.write(new File(filePath + photo));
                    } catch (Exception ex) {
                        out.println(ex.toString());
                    }

                }

            }
            UserTable u = new UserTable();
            HttpSession session = request.getSession();
            ArrayList<UserTable> al1 = (ArrayList<UserTable>) session.getAttribute("userDetails");
            if (al1.size() > 0) {
                u = al1.get(0);
            }
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            Transaction tr = se.beginTransaction();

            CategoryTable ct = new CategoryTable();
            ct.setCategoryID(catid);

            SubCategory sc = new SubCategory();
            sc.setSubCategoryID(subcatid);

            ProductTable p = new ProductTable();
            p.setProductName(productname);
            p.setProductStatus(status);
            p.setCategoryID(ct);
            p.setSubCategoryID(sc);
            p.setProductDetail(description);
            p.setProductPrice(price);
            p.setUserID(u);
            se.save(p);

            AuctionTable a = new AuctionTable();
            a.setAuctionStartDateTime(stime);
            a.setAuctionEndDateTime(etime);
            a.setProductAuctionID(p);
            se.save(a);

            for (int i = 0; i < 4; i++) {
                GraphicTable g = new GraphicTable();
                g.setProductID(p);
                g.setImagePath(al.get(i));
                se.save(g);
            }

            tr.commit();
            se.close();
            Integer pid = p.getProductID();
            session.setAttribute("productId", pid);
            try {
                Thread.sleep(1500);
            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect("fetchsingle");
//            RequestDispatcher rd = request.getRequestDispatcher("fetchsingle");
//            rd.forward(request, response);

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
