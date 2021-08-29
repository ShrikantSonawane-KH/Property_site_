package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.dao.RenterDao;
import property.dao.RenterDaoImpl;
import property.service.LoginCheckDao;
import property.service.LoginCheckDaoImpl;

// User Login controller
public class login_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String ADMIN_EMAIL = "shrisonawane97@gmail.com";
	private final String ADMIN_PASSWORD = "123";

	public login_control() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//////////
		RenterDao renterdao = new RenterDaoImpl();
		renterdao.showByCity("pune");
		renterdao.getCategoriesProType();
		/////////
		
		LoginCheckDao logincheckdao = new LoginCheckDaoImpl();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email.equals(ADMIN_EMAIL) && password.equals(ADMIN_PASSWORD)) {
			//response.sendRedirect("##AdminPage.jsp");
			System.out.println("Go to AdminPage");
		} else if (email != null && password != null) {
			String status = logincheckdao.checkUser(email, password);
			
			switch (status) {
			case "renter":
				response.sendRedirect("RenterHome.jsp?useremail="+email);			//home page with property add autho
				System.out.println("Go to RenterPage");					
				break;
			case "tenant":
				response.sendRedirect("TenantHome.jsp");			//home page with  buy and rent autho
				System.out.println("Go to TenantPage");
				break;
			case "not_user":
				response.sendRedirect("index.jsp?message=Sorry, Either username or password is incorrect.");
				break;
			}

		}

	}

}
