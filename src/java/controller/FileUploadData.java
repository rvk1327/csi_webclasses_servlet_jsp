package controller;

import com.oreilly.servlet.MultipartRequest;
import dbutil.CollegeContext;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.FileData;

public class FileUploadData extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            MultipartRequest mreq = new MultipartRequest(request,"C:/Users/DELL/Documents/NetBeansProjects/CSI_Webclasses/web/upload");
            
            
            String fileid = mreq.getParameter("txtid");
            File f = mreq.getFile("fileup");
            String filename = f.getName();
            String filepath = f.getAbsolutePath();
            String date_create = new java.util.Date().toLocaleString();
            
            FileData fd = new FileData();
            fd.setDate_create(date_create);
            fd.setFile_id(fileid);
            fd.setFile_name(filename);
            fd.setFile_path(filepath);
            
            CollegeContext.getContext().storeData(fd);
            out.println("File Upload Successfully...");
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
