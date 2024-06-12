package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import dao.category_dao;
import dao.user_dao1;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;

@WebServlet(urlPatterns = {"/login"})
public class dangnhap extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        request.getRequestDispatcher("dangnhap.html").forward(request, response);
	    }
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		user1 user = new user1(username, password, null);
		user1 user2 = user_dao1.getInstance().selectById(user);
		if(user2!=null) {
			out.println("dang nhap thanh cong");
			resp.sendRedirect("index.jsp"); 
		}
		else {
			out.println("sai mat khau hoac tai khoan");
			req.getRequestDispatcher("dangnhap.html").include(req, resp);
		}
	}
}
