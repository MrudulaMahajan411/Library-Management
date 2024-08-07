package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book_table")
public class book {
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;
private String title;
private String author;
private double price;
	public book() {
	super();
	// TODO Auto-generated constructor stub
}
	public book(int bid, String title, String author, double price) {
	super();
	this.bid = bid;
	this.title = title;
	this.author = author;
	this.price = price;
}
	public book(String title, String author, double price) {
		super();
		this.title = title;
		this.author = author;
		this.price = price;
	}
	@Override
public String toString() {
	return "book [bid=" + bid + ", title=" + title + ", author=" + author + ", price=" + price + "]";
}
	public int getBid() {
	return bid;
}
public void setBid(int bid) {
	this.bid = bid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
	
	
}
