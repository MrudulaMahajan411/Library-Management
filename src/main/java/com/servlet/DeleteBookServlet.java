package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.bookDao;


public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   bookDao bookDao=new bookDao();
	    public DeleteBookServlet() {
	        super();

	    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.getWriter().append("Served at: ").append(request.getContextPath());
			int bid=Integer.parseInt(request.getParameter("bid"));
			bookDao.deleteBook(bid);
			response.sendRedirect("booklist.jsp");
		}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
		}



}
