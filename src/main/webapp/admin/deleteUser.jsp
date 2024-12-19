<%@ page import="ravi.Child" %> 
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="ravi.UserDAO" %> 
<%@ page import="ravi.ChildDAO" %>
<% 
    int id = Integer.parseInt(request.getParameter("id"));
    UserDAO.deleteUser(id); 
    response.sendRedirect("admin.jsp");
%>