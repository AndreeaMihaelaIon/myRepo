package com.andreea.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import static com.andreea.utils.Constants.TOKEN;

import com.andreea.dao.LoginDao;

@WebServlet("/login")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletLogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("username");
		String password = request.getParameter("userpass");

		if (LoginDao.validate(user, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("name", user);
			session.setAttribute("token", TOKEN);
			RequestDispatcher rd = request.getRequestDispatcher("home");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/error.jsp");
			rd.forward(request, response);
		}
	}

}
