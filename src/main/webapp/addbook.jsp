<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('https://live.staticflickr.com/8309/7971251918_6160513866.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .container {
        text-align: center;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #4CAF50;
    }
    form {
        margin: 20px 0;
    }
    input[type="text"], input[type="submit"], input[type="reset"] {
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"], input[type="reset"] {
        background-color: #4CAF50;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #45a049;
    }
    a {
        display: inline-block;
        margin-top: 20px;
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
    <h1>Please add your book here....!!</h1>
    <form action="AddBookServlet" method="post">
        Title: <input type="text" name="title" required><br><br>
        Author: <input type="text" name="author" required><br><br>
        Price: <input type="text" name="price" required><br><br>
        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </form>
   <a href="booklist.jsp">Books List</a>
</div>
</body>
</html>
