package com.ismo.command.controllers;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ismo.command.metier.IMetier;
import com.ismo.command.metier.IMetierDaoCate;
import com.ismo.command.metier.IMetierDaoProduit;
import com.ismo.command.models.Categorie;
import com.ismo.command.models.Produit;

/**
 * Servlet implementation class controllers
 */
@WebServlet(urlPatterns = "/do/*")
public class controllers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IMetier<Categorie> metierCat = new IMetierDaoCate();
	IMetier<Produit> metierPrd = new IMetierDaoProduit();

	public controllers() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Recuperer les donnees de la base des donnees
		if (request.getPathInfo().equals("/home")) {
			List<Categorie> cats = metierCat.getAll();
			List<Produit> prds = metierPrd.getAll();
			request.setAttribute("categories", cats);
			request.setAttribute("produits", prds);
			System.out.println(prds.size());

			// Pagination
			int totalItems = prds.size();
			int itemsPerPage = 6;
			int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);

			String currentPageParam = request.getParameter("pageNumber");
			int currentPage = 1;
			if (currentPageParam != null && !currentPageParam.isEmpty()) {
				currentPage = Integer.parseInt(currentPageParam);
			}

			int startIndex = (currentPage - 1) * itemsPerPage;
			int endIndex = Math.min(currentPage * itemsPerPage, totalItems);

			List<Produit> paginatedProducts = prds.subList(startIndex, endIndex);

			// Ajouter les produits paginés à la portée de requête
			request.setAttribute("paginatedProducts", paginatedProducts);

			// Ajouter les informations de pagination à la portée de requête
			request.setAttribute("totalPages", totalPages);
			request.setAttribute("currentPage", currentPage);

			// Rediriger vers la page JSP
			request.getRequestDispatcher("/home.jsp").forward(request, response);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
