package com.andreea.controller;

import static com.andreea.utils.Constants.TOKEN;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.andreea.dao.Dao;
import com.andreea.dao.DaoImpl;
import com.andreea.service.Produs;

@WebServlet("/produs")
public class ServletDetaliiProdus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletDetaliiProdus() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String token = (String) session.getAttribute("token");

		String id = request.getParameter("id");
		if (token != null && token.equals(TOKEN)) {
			Dao dao = DaoImpl.getInstance();
			Produs produs = dao.getProductById(Integer.parseInt(id));
			request.setAttribute("produs", produs);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/detaliiProdus.jsp");
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login");
			rd.forward(request, response);
		}

	}

}
