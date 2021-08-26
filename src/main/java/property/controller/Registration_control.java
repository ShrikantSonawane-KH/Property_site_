package property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.dao.UserDao;
import property.dao.UserDaoImpl;
import property.pojo.User;

public class Registration_control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Registration_control() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDao userdao = new UserDaoImpl();

		String email = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		User user = new User(email, password, role);

		userdao.insertion(user);

	}

}
