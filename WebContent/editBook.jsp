<%@page import="Database.dbConnectivity"%>
<%@ page import="java.sql.*" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String title = "", author = "";
    double price = 0;

    Connection conn = dbConnectivity.getConnection();
    if (request.getParameter("update") != null) {
        title = request.getParameter("title");
        author = request.getParameter("author");
        price = Double.parseDouble(request.getParameter("price"));

        PreparedStatement pstmt = conn.prepareStatement("UPDATE books SET title=?, author=?, price=? WHERE id=?");
        pstmt.setString(1, title);
        pstmt.setString(2, author);
        pstmt.setDouble(3, price);
        pstmt.setInt(4, id);

        pstmt.executeUpdate();
        conn.close();
        response.sendRedirect("listBooks.jsp");
    } else {
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM books WHERE id=?");
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            title = rs.getString("title");
            author = rs.getString("author");
            price = rs.getDouble("price");
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
</head>
<body>
    <h1>Edit Book</h1>
    <form method="post">
        <label>Title:</label>
        <input type="text" name="title" value="<%= title %>" required /><br>
        <label>Author:</label>
        <input type="text" name="author" value="<%= author %>" required /><br>
        <label>Price:</label>
        <input type="text" name="price" value="<%= price %>" required /><br>
        <input type="submit" name="update" value="Update Book" />
    </form>
</body>
</html>
