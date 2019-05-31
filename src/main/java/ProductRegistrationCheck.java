/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.marayaglobal.dao.AdminProductDBHelper;
import com.marayaglobal.product.AdminProduct;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)


public class ProductRegistrationCheck extends HttpServlet {

	AdminProduct product = new AdminProduct();
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
        	
        	
        	String savePath = "C:\\Users\\DELL\\Desktop\\img";
        	
        	 File fileSaveDir = new File(savePath);
             if (!fileSaveDir.exists()) {
                 fileSaveDir.mkdir();
             }
             Part part = request.getPart("primaryImage");
             String fileName = extractFileName(part);
             
             
             
          	product.setTitle(request.getParameter("title")) ;
          	product.setCategory(request.getParameter("category")) ;
          	product.setRegularprice(Double.parseDouble(request.getParameter("regularprice"))) ;
          	product.setDiscount(Float.parseFloat(request.getParameter("discount")));
          	product.setBrand(request.getParameter("brand")) ;
          	product.setModel(request.getParameter("model")) ;
          	product.setProcessor(request.getParameter("processor")) ;
          	product.setGenaration(request.getParameter("genaration")) ;
          	product.setClockSpeed(request.getParameter(" clockSpeed")) ;
          	product.setCache(request.getParameter("cache")) ;
          	
          	
          	product.setMainCamera(request.getParameter("mainCamera")) ;
          	product.setSelfieCamera(request.getParameter("selfieCamera")) ;
          	product.setAnnounced(request.getParameter("announced")) ;
          	product.setWlan(request.getParameter("wlan")) ;
          	product.setBluetooth(request.getParameter("bluetooth")) ;
          	product.setDimensions(request.getParameter("dimensions")) ;
          	
          	product.setDisplayType(request.getParameter("displayType")) ;
          	product.setDisplayResulation(request.getParameter("displayResulation")) ;
          	product.setDisplaySize(request.getParameter("displaySize"));
          	product.setTouch(request.getParameter("touch")) ;
          	product.setRamType(request.getParameter("ramType")) ;
          	product.setRam(request.getParameter("ram")); 
          	product.setStorage(request.getParameter("storage")) ;
          	product.setGraphicsChipset(request.getParameter("graphicsChipset"));
          	product.setGraphicsMemory(request.getParameter("graphicsMemory"));
          	product.setNetworking(request.getParameter("networking"));
          	product.setDisplayPort(request.getParameter("displayPort")); 
          	product.setAudioPort(request.getParameter("audioPort"));
          	product.setUsbPort(request.getParameter("usbPort")); 
          	product.setBettery(request.getParameter("bettery"));
          	product.setWeight(request.getParameter("weight")); 
          	product.setColor(request.getParameter("color")) ;
          	product.setOperatingSystem(request.getParameter("operatingSystem"));
          	product.setPortNo(request.getParameter("portNo")); 
          	product.setWarrenty(request.getParameter("warrenty")) ;
          	product.setDescription(request.getParameter("description"));
          	
          	
          	 String imageName = product.getTitle().replace(" ", "_")
          			 +"-"+product.getModel().replace(" ", "_") + ".jpg";

             part.write(savePath + File.separator + imageName);
             product.setPrimaryImage(imageName);
             
             int status = AdminProductDBHelper.insert(product);

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductRegistrationCheck</title>");            
            out.println("</head>");
            out.println("<body>");
            if(status>0)
            	out.println("<h2>Registration Success</h2");
            else
            	out.println("<h2>Registration Failed</h2");
            out.println("</body>");
            out.println("</html>");
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

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("primaryImage")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
