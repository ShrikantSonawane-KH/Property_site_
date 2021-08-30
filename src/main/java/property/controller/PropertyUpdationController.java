package property.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import property.dao.PropertyDao;
import property.dao.PropertyDaoImpl;
import property.dao.RenterDao;
import property.dao.RenterDaoImpl;
import property.pojo.Pro_Description;
import property.pojo.Pro_address;
import property.pojo.Pro_image;
import property.pojo.Pro_overview;
import property.pojo.Property;
import property.pojo.Renter;
import property.service.UpdationHelperDao;
import property.service.UpdationHelperDaoImpl;


@MultipartConfig
public class PropertyUpdationController extends HttpServlet {
	private static final long serialVersionUID = 1L;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        	////////////
        	RenterDao renterdao = new RenterDaoImpl();
    		
        	int id = Integer.parseInt(request.getParameter("id"));
        	
//    		property
    		String name = request.getParameter("name");
    		float price = Float.parseFloat(request.getParameter("price")); 
    		float deposite = Float.parseFloat(request.getParameter("deposite"));
    		String proType = request.getParameter("proType");
    		String proCategory = request.getParameter("proCategory");
    		String pro_for = request.getParameter("pro_for");	
    		
    		
//    		image
    		
    		String imgdesc = request.getParameter("imagedesc");
    		Part part = request.getPart("image");
    		
    		Pro_image img = new Pro_image();
    		
//    		p.setpPhoto(part.getSubmittedFileName());
    		
    		img.setImage(part.getSubmittedFileName());
    		img.setImg_desc(imgdesc);
    		
    		
    		///////
    		
//    		Address
    		String area = request.getParameter("area");
    		String lane = request.getParameter("lane");
    		String landmark = request.getParameter("landmark");
    		String city = request.getParameter("city");
    		String state = request.getParameter("state");
    		String country = request.getParameter("country");
    		String pincode = request.getParameter("pincode");
    		
    		Pro_address proAddress = new Pro_address(area,lane,landmark,city,state,country,pincode);

		
    		
//    		Description
    		String furnish = request.getParameter("furnish");
    		String status = request.getParameter("status");
    		String highlights = request.getParameter("highlights");
    		
//    		Overview
  
    		String security = request.getParameter("security");
    		float maintenance = Float.parseFloat(request.getParameter("maintenance"));
    		String build_area = request.getParameter("build_area");
    		int NoOfBathroom = Integer.parseInt(request.getParameter("NoOfBathroom"));
    		int NoOfBalcony = Integer.parseInt(request.getParameter("NoOfBalcony"));
    		String availableFrom = request.getParameter("availableFrom");
    		int NoOfFloor = Integer.parseInt(request.getParameter("NoOfFloor"));
    		String proAge = request.getParameter("proAge");
    		String parking = request.getParameter("parking");
    		String entrance = request.getParameter("entrance");

    		
    		
    		////////////////////////////////////////
    		Pro_overview proOverview = new Pro_overview(security,maintenance,build_area,NoOfBathroom,NoOfBalcony,availableFrom,NoOfFloor,proAge,parking,entrance);
    		Pro_Description proDescription = new Pro_Description(furnish,status,highlights,proOverview);
    		Property property = new Property(name,proAddress,proDescription,pro_for,img,price,deposite,proType,proCategory);
    				
    		 Renter updaterenter = new Renter(property);
    	
    		 String validRenterEmail = Renter.getRenterEmail();
    		 updaterenter.setValidRenterEmail(validRenterEmail);
    		 
    		 System.out.println(validRenterEmail);
    		 
    		 
    		 //helper call
    	
    		 UpdationHelperDao updationhelperdao = new UpdationHelperDaoImpl();
    		 updationhelperdao.propertyupdation(updaterenter,id);
    		
    	
    		 response.sendRedirect("demo.jsp");
    		 

              
//                pic upload
//                find out the path to upload photo
                String path = request.getRealPath("img") + File.separator + "products" + File.separator + part.getSubmittedFileName();
                System.out.println(path);

                //uploading code..
                try {

                    FileOutputStream fos = new FileOutputStream(path);

                    InputStream is = part.getInputStream();

//                reading data
                    byte[] data = new byte[is.available()];

                    is.read(data);

//                writing the data
                    fos.write(data);

                    fos.close();

                } catch (Exception e) {
                    e.printStackTrace();
                }

                out.println("property save sucess...");
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "property is updated successfully..!");
               
                return;
        }
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		///////////
		processRequest(request, response);
		/////////
		
	}
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }
	

}
