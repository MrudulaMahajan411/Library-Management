package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import configuration.HibernateCunfiguretion;
import entity.book;

public class bookDao {
	public static boolean save(book book) {

		Session session = HibernateCunfiguretion.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(book);
		transaction.commit();
		session.close();
		return false;

	}

	public static List<book> getbooks()

	{
		Session session = HibernateCunfiguretion.getSessionFactory().openSession();
		return session.createQuery("from book", book.class).list();
	
	}

	public static boolean updateBook(book book) {
		Session session = HibernateCunfiguretion.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.update(book);
		transaction.commit();
		session.close();
	return false;
	
		
	
		
	}

	public boolean deleteBook(int bid) {
		Session session = HibernateCunfiguretion.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		book book = session.get(book.class, bid);
		  if (book != null) {
              session.delete(book);
              System.out.println("Book is deleted");
          }          
          transaction.commit();    
    
		
		session.close();
	return false;
		
	}
}
