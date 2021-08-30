package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.dao.RenterDao;
import property.dao.RenterDaoImpl;
import property.pojo.Renter;


public class deletRenterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deletRenterController() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RenterDao renterdao = new RenterDaoImpl();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		Renter renter = renterdao.deletion(id);
		
		String propertyName=renter.getProperty().getName();
		
		response.sendRedirect("showPropertyByRenter.jsp?message= Successfully removed"+" "+ propertyName +" "+"property...!");
		
		
	}

}




