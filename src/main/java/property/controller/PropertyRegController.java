package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.pojo.Pro_Description;
import property.pojo.Pro_address;
import property.pojo.Pro_image;

public class PropertyRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PropertyRegController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	

		Pro_image image; 
		private float price;
		private float deposite;
		private String pro_type;
		private String category;
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String description = request.getParameter("description");
		String pro_for = request.getParameter("pro_for");
		String name = request.getParameter("image");
		String name = request.getParameter("name");
		String name = request.getParameter("name");

		
		
	}

}
