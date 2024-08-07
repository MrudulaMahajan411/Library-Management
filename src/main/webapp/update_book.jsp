<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Book</title>
</head>
<body>
<h2 style="align":center,colour:green">Update Book</h2>

<form action="UpdateBookServlet" method = "post"><br><br>
Bid: <input type = "text" name ="bid" value="${ book.bid)}" reqired ><br><br>
Title: <input type = "text" name ="title" value="${ book.title)}" reqired ><br><br>
author: <input type = "text" name ="author" value="${ book.author)}" reqired><br><br>
price: <input type = "text" name ="price" value="${ book.price)}" reqired><br><br>

<input type = "submit" value = "submit">
<input type = "reset" value = "cancel">
</form>
    <a href="booklist.jsp">Books List</a>
</body>
</html>
