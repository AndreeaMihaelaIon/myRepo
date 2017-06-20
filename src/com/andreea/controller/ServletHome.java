package com.andreea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.andreea.dao.Dao;
import com.andreea.dao.DaoImpl;
import com.andreea.service.Produs;

import static com.andreea.utils.Constants.TOKEN;

@WebServlet("/home")
public class ServletHome extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ServletHome() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String token = (String) session.getAttribute("token");
		
		if (token != null && token.equals(TOKEN)) {

			Dao dao = DaoImpl.getInstance();
			List<Produs> listaProduse = dao.getAllProducts();
			request.setAttribute("produse", listaProduse);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/home.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login");
			rd.forward(request, response);
		}
	}

}
