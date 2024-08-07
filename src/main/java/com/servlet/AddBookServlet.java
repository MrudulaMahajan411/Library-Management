package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.bookDao;

import entity.book;

public class AddBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public AddBookServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        double price = Double.parseDouble(request.getParameter("price"));

        // Create and set properties of the book object
        book book = new book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setPrice(price);

        // Save the book object
        boolean result = bookDao.save(book);
        if (result) {
            System.out.println("Book added successfully");
        } else {
            System.out.println("Error adding book");
        }

        // Redirect to book list page
        response.sendRedirect("booklist.jsp");
    }
}

