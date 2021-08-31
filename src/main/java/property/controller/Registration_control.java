package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.dao.UserDao;
import property.dao.UserDaoImpl;
import property.login.confirmation.EmailConfirmation;
import property.pojo.User;
import property.service.RegistrationValidationDao;
import property.service.RegistrationValidationDaoImpl;

public class Registration_control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Registration_control() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RegistrationValidationDao registrationvalidationdao = new RegistrationValidationDaoImpl();

		UserDao userdao = new UserDaoImpl();

		String name = request.getParameter("name");
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		String mobile = request.getParameter("mobile");

		boolean validEmail = registrationvalidationdao.checkForRegistration(email);
		
		if (validEmail) {
			
			User user = new User(name,email,password,role,mobile);

			userdao.insertion(user);
			EmailConfirmation e = new EmailConfirmation();
			e.sendEmailAA(name, email, password);
			
			response.sendRedirect("login.jsp?");

		} else {
			
			response.sendRedirect("Register.jsp?message= User already registered..!");
		}

	}

}
