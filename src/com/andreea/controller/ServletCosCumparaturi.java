package com.andreea.controller;

import java.io.IOException;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.andreea.dao.*;
import com.andreea.service.Produs;


@WebServlet("/cos")
public class ServletCosCumparaturi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCosCumparaturi() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String idString = request.getParameter("id");

		int id = Integer.parseInt(idString);

		Dao dao = DaoImpl.getInstance();

		Produs produs = dao.getProductById(id);

		HttpSession sesiune = request.getSession();
		List<Produs> cos = (List<Produs>) sesiune.getAttribute("cos");

		if (cos == null) {
			cos = new ArrayList<Produs>();
			sesiune.setAttribute("cos", cos);
		}

		cos.add(produs);
		dao.updateProductStoc(id);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/adaugaInCos.jsp");

		dispatcher.forward(request, response);
	}

}
