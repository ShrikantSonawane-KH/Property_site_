package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

public class PropertyRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PropertyRegController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RenterDao renterdao = new RenterDaoImpl();
		
//		property
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price")); 
		float deposite = Float.parseFloat(request.getParameter("deposite"));
		String proType = request.getParameter("proType");
		String proCategory = request.getParameter("proCategory");
		String pro_for = request.getParameter("pro_for");
	
		
//		Address
		String area = request.getParameter("area");
		String lane = request.getParameter("lane");
		String landmark = request.getParameter("landmark");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode = request.getParameter("pincode");
		
		Pro_address proAddress = new Pro_address(area,lane,landmark,city,state,country,pincode);
//		image
//		remain
		
//		Description
		String furnish = request.getParameter("furnish");
		String status = request.getParameter("status");
		String highlights = request.getParameter("highlights");
		
//		Overview
		String property_name = request.getParameter("property_name");
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

		Pro_overview proOverview = new Pro_overview(security,maintenance,build_area,NoOfBathroom,NoOfBalcony,availableFrom,NoOfFloor,proAge,parking,entrance);
		Pro_Description proDescription = new Pro_Description(furnish,status,highlights,proOverview);
		Property property = new Property(name,proAddress,proDescription,pro_for,price,deposite,proType,proCategory);
				
		 Renter renter = new Renter(property);
		 
		 String validRenterEmail = renter.getValidRenterEmail();
		 Renter.setValidRenterEmail(validRenterEmail);
		 
		 System.out.println(validRenterEmail);
		 renterdao.insertion(renter);
		
		 response.sendRedirect("PropertyRegistration.jsp?message=Property added successfully..!");
	}

}
