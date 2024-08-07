<%@page import="java.util.List"%>
<%@page import="entity.book"%>
<%@page import="com.dao.bookDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image:
		url('https://live.staticflickr.com/8309/7971251918_6160513866.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	text-align: center;
	background-color: rgba(255, 255, 255, 0.8);
	/* Semi-transparent background */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #4CAF50;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 15px;
	text-align: left;
}

th {
	background-color: #4CAF50;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

a {
	text-decoration: none;
	color: #fff;
	background-color: #4CAF50;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s;
}

a:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Book List</h2>
		<table>
			<tr>
				<th>Book Id</th>
				<th>Title</th>
				<th>Author</th>
				<th>Price</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
				bookDao bookdao = new bookDao();
				List<book> books = bookdao.getbooks();
				for (book book : books) {
			%>
			<tr>
				<td><%=book.getBid()%></td>
				<td><%=book.getTitle()%></td>
				<td><%=book.getAuthor()%></td>
				<td><%=book.getPrice()%></td>
				<td>
					<form action="update_book.jsp" style="display: inline;">
						 <input type="submit" class="btn-update" value="Update" />
					</form>            
				</td>
				
				<td>
					<form action="DeleteBookServlet" method="Get"
						style="display: inline;">
						<input type="hidden" name="bid" value="<%=book.getBid()%>" /> <input
							type="submit" class="btn-delete" value="Delete" />
					</form>            
				</td>

			</tr>
			<%
				}
			%>
		</table>
		<a href="addbook.jsp">Add Book</a>
	</div>
</body>
</html>
