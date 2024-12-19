<%@ page import="ravi.Child" %> 
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="ravi.UserDAO" %> 
<%@ page import="ravi.ChildDAO" %>
<% ChildDAO childDAO = new ChildDAO(UserDAO.getConnection()); 
    int id = Integer.parseInt(request.getParameter("id"));
    childDAO.deleteChild(id);
    response.sendRedirect("admin.jsp");
%>
