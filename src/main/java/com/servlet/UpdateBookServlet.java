package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.bookDao;

import entity.book;


public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateBookServlet() {
	// TODO Auto-generated constructor stub
	   super();
}
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int bid = Integer.parseInt(request.getParameter("bid"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		double price = Double.parseDouble(request.getParameter("price"));
		
		book book = new book(bid, title, author, price);
		bookDao.updateBook(book);
		response.sendRedirect("booklist.jsp");
	}

}
