package controller;

import java.io.IOException;
import java.util.List;

import dao.category_dao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;

@WebServlet(urlPatterns = {"/category"})
public class categoryController extends HttpServlet{
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        List<Category> categories = category_dao.getInstance().selectALL();
	        System.out.println(categories.get(0));
	        request.setAttribute("categoryList", categories);
	        request.getRequestDispatcher("category.jsp").forward(request, response);
	    }

}
