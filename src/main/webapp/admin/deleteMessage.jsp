<%@ page import="ravi.User"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="ravi.UserDAO"%>
<%@ page import="java.sql.*"%>
<%
Connection connection = UserDAO.getConnection();
Statement statement = connection.createStatement();
int message_id = Integer.parseInt(request.getParameter("id"));
statement.executeUpdate("DELETE FROM contact_messages WHERE message_id = " + message_id);
response.sendRedirect("admin.jsp");
%>