<%@page import="Database.dbConnectivity"%>
<%@ page import="java.sql.*" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    Connection conn = dbConnectivity.getConnection();
    PreparedStatement pstmt = conn.prepareStatement("DELETE FROM books WHERE id=?");
    pstmt.setInt(1, id);
    pstmt.executeUpdate();
    conn.close();

    response.sendRedirect("listBooks.jsp");
%>
