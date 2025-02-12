<%@page import="Database.dbConnectivity"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<%
    Connection conn = dbConnectivity.getConnection();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM books");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>
    <h1>Books List</h1>
    <a href="addBook.jsp">Add New Book</a>
    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("author") %></td>
            <td><%= rs.getDouble("price") %></td>
            <td>
                <a href="editBook.jsp?id=<%= rs.getInt("id") %>">Edit</a> |
                <a href="deleteBook.jsp?id=<%= rs.getInt("id") %>" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
        <%
            }
            conn.close();
        %>
    </table>
</body>
</html>
