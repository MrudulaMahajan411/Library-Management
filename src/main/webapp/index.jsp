<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('https://www.ndmscbd.org/uploads/events/1635237308957421625.jpg');
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
    <h1>Welcome to Library Management</h1>
    <a href="addbook.jsp">Add Book</a>
</div>
</body>
</html>
