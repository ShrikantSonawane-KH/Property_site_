package property.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.*;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class validatFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		String mobile = request.getParameter("mobile");
		
		 String Nameregex = "^[a-zA-Z ]*$";
		 Pattern p = Pattern.compile(Nameregex);
		 Matcher m = p.matcher(name);
		 
		 String Mobileregex = "^[0-9]+";
		 Pattern mp = Pattern.compile(Mobileregex);
		 Matcher mn = mp.matcher(mobile);
		 

		if (name.trim().length() <= 2 || name.length() >= 30 || name == null || name.trim().equals("")){

			String namev = "Invalid Name";
			request.setAttribute("msg1", namev);
			request.getRequestDispatcher("Register.jsp").forward(request, response);

			/* out.print("<main>Invalid name</main>"); */
		}
		if (!(m.matches())) {

			String namev = "Only characters is allowed";
			request.setAttribute("msg1", namev);
			request.getRequestDispatcher("Register.jsp").forward(request, response);

		}
		if (email == null || email.trim().equals("") || (email.charAt(email.length()-4)!='.') && (email.charAt(email.length()-3)!='.') || (email.charAt(email.length()-5)=='@') || (email.charAt(email.length()-4)=='@')) {

			String emailv = "Invalid email";
			request.setAttribute("msg2", emailv);
			request.getRequestDispatcher("Register.jsp").forward(request, response);

			
		} 
		if (password.trim().equals("") || password == null || password.length() < 4 || password.length() > 10) {

			String passv = "minimum length 4 and maximum 10";
			request.setAttribute("msg3", passv);
			request.getRequestDispatcher("Register.jsp").forward(request, response);

		}
		if ( mobile.trim().equals("") || mobile == null || mobile.length() > 10 || mobile.length() < 10 ) {

			String mob = "Invalid Mobile Number";
			request.setAttribute("msg4", mob);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}
		if (!(mn.matches())) {

			String mob = "Only number allowed";
			request.setAttribute("msg4", mob);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}

	
		if (mobile.charAt(0) != '7' && mobile.charAt(0) != '8' && mobile.charAt(0) != '9') {
		 
			String mob = "Invalid Starting of Mobile Number";
			request.setAttribute("msg4", mob);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}

		else {
			chain.doFilter(request, response);
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
