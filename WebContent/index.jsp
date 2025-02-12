<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP CRUD Operation on Bookstore</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        width: 60%;
        text-align: center;
        background:white;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        margin-bottom: 20px;
    }
    .btn-container {
        display: flex;
        justify-content: center;
        gap: 20px;
    }
    .btn {
        padding: 20px 20px;
        font-size: 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        color: white;
    }
    .btn-add { background-color: #28a745; }
    .btn-read { background-color: #007bff; }
    .btn-update { background-color: #ffc107; color: black; }
    .btn-delete { background-color: #dc3545; }
    .btn:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>

<div class="container">
    <h1><u>JSP CRUD Operation on Bookstore</u></h1>
    <div class="btn-container">
        <button class="btn btn-add" onclick="location.href='addBook.jsp'">Add Books</button>
        <button class="btn btn-read" onclick="location.href='listBooks.jsp'">Available Books</button>
   </div>
</div>

</body>
</html>
