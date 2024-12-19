<%@ page import="ravi.Child"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="ravi.UserDAO"%>
<%@ page import="ravi.User"%>

<%
User currentUser = (User) session.getAttribute("user");

if (currentUser == null) {
    response.sendRedirect("login.jsp");
}



String username = request.getParameter("fullName");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String address = request.getParameter("address");

currentUser.setUsername(username);
currentUser.setEmail(email);
currentUser.setPhone(phone);
currentUser.setAddress(address);

UserDAO userDAO = new UserDAO();
userDAO.updateUser(currentUser);

response.sendRedirect("profile.jsp");
%>
