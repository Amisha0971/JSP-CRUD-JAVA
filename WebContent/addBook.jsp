<%@page import="Database.dbConnectivity"%>
<%@ page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        double price = Double.parseDouble(request.getParameter("price"));

        Connection conn = dbConnectivity.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("INSERT INTO books (title, author, price) VALUES (?, ?, ?)");
        pstmt.setString(1, title);
        pstmt.setString(2, author);
        pstmt.setDouble(3, price);

        pstmt.executeUpdate();
        conn.close();

        response.sendRedirect("listBooks.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
    <h1>Add New Book</h1>
    <form method="post">
        <label>Title:</label>
        <input type="text" name="title" required /><br>
        <label>Author:</label>
        <input type="text" name="author" required /><br>
        <label>Price:</label>
        <input type="text" name="price" required /><br>
        <input type="submit" name="submit" value="Add Book" />
    </form>
</body>
</html>
