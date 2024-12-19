<%@ page import="ravi.Child" %> 
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="ravi.UserDAO" %> 
<%@ page import="ravi.AdoptionApplicationDAO" %>
<% 
    UserDAO userDAO = new UserDAO(); 
    AdoptionApplicationDAO adoptionApplicationDAO = new AdoptionApplicationDAO(userDAO.getConnection()); 
    int id = Integer.parseInt(request.getParameter("id"));
    String status = request.getParameter("status");
    adoptionApplicationDAO.updateApplicationStatus(id, status); 
    response.sendRedirect("admin.jsp");
%>
