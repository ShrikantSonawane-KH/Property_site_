package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.dao.UserDao;
import property.dao.UserDaoImpl;
import property.pojo.User;


public class deleteUserById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public deleteUserById() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDao userdao = new UserDaoImpl();
	
			int id = Integer.parseInt(request.getParameter("id"));
			User user = userdao.deletion(id);
			
			String Name =user.getName();
			String UserRole =user.getRole();
			
			response.sendRedirect("editRenter.jsp?message= Successfully removed user"+ " "+Name +" "+"of role"+" "+UserRole+" "+"...!");
	

	}

}
