<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adoption Application</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <%@ page import="ravi.Child" %> 
    <%@ page import="java.util.List" %> 
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="ravi.UserDAO" %> 
    <%@ page import="ravi.User" %>
    <%@ page import="ravi.ChildDAO" %>
    <%@ page import="ravi.AdoptionApplicationDAO" %>
    <%@ page import="ravi.AdoptionApplication" %>

    <!-- Logic for the form submittion -->
     <%
        if (request.getMethod().equals("POST")) {
            int childId = Integer.parseInt(request.getParameter("childId"));
            User user = (User) session.getAttribute("user");
            String message = request.getParameter("message");
            UserDAO userDAO = new UserDAO();
            AdoptionApplicationDAO adoptionApplicationDAO = new AdoptionApplicationDAO(userDAO.getConnection());
            AdoptionApplication adpotApplication = new AdoptionApplication();
            adpotApplication.setChildId(childId);
            adpotApplication.setUserId(user.getId());
            adpotApplication.setMessage(message);
            adpotApplication.setStatus("Submitted");
            adoptionApplicationDAO.addApplication(adpotApplication);

            ChildDAO childDAO = new ChildDAO(UserDAO.getConnection());
            childDAO.changeChildStatus(childId, "Adopted");
            response.sendRedirect("home.jsp");
        }     
    %>
    
    <%
    	if(request.getMethod().equals("GET")){ %>
    	<!-- Navigation Bar -->
    <header class="bg-blue-600 text-white shadow-md">
        <div class="container mx-auto flex justify-between items-center py-4 px-6">
            <h1 class="text-xl font-bold">Child Adoption Portal</h1>
            <nav>
                <a href="home.jsp" class="px-4 hover:underline">Home</a>
                <a href="profile.jsp" class="px-4 hover:underline">My Profile</a>
                <a href="logout.jsp" class="px-4 hover:underline">Logout</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto py-8 px-6">
        <h2 class="text-2xl font-semibold text-gray-800 mb-6">Apply for Adoption</h2>

        <!-- Child Details Card -->
            
            <% ChildDAO childDAO = new ChildDAO(UserDAO.getConnection()); 
            int id = Integer.parseInt(request.getParameter("id"));
            Child child = childDAO.getChildById(id);
            if (child != null) {
        %>
            <div class="bg-white rounded-lg shadow-md p-6 mb-8">
                <div class="flex flex-col md:flex-row gap-6">
                    <img src="<%= child.getImagePath() %>" alt="Child Image" class="w-full md:w-1/3 h-64 object-contain rounded-md">
                    <div class="flex-1">
                        <h3 class="text-xl font-bold text-gray-800 mb-2"><%= child.getName() %></h3>
                        <p class="text-gray-600 mb-1"><strong>Age:</strong> <%= child.getAge() %> years</p>
                        <p class="text-gray-600 mb-1"><strong>Gender:</strong> <%= child.getGender() %></p>
                        <p class="text-gray-600 mb-1"><strong>Status:</strong> <span class="<%= child.getStatus().equalsIgnoreCase("Available") ? "text-green-600" : "text-red-600" %>"><%= child.getStatus() %></span></p>
                        <p class="text-gray-600 mb-1"><strong>Description:</strong> <%= child.getDescription() %></p>
                        <p class="text-gray-600 mb-4"><strong>Medical Info:</strong> <%= child.getMedicalInfo() %></p>
                    </div>
                </div>
            </div>

            <!-- Adoption Application Form -->
            <div class="bg-white rounded-lg shadow-md p-6">
                <h3 class="text-lg font-semibold text-gray-800 mb-4">Send a Message for Adoption</h3>
                <form action=<%= request.getContextPath() + "/applyForAdoption.jsp" %> method="POST">
                    <input type="hidden" name="childId" value="<%= child.getChildId() %>">

                    <div class="mb-4">
                        <label for="message" class="block text-gray-700 font-medium mb-2">Your Message</label>
                        <textarea id="message" name="message" rows="5" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" placeholder="Write your message for the adoption application" required></textarea>
                    </div>

                    <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700">Submit Application</button>
                </form>
            </div>
        <%
            } else {
        %>
            <!-- No Child Found Message -->
            <div class="text-center text-gray-600">
                <p>Child not found. Please go back to the <a href="home.jsp" class="text-blue-600 hover:underline">home page</a>.</p>
            </div>
        <%
            }
        %>
    </main>

    <!-- Footer -->
    <footer class="bg-blue-600 text-white text-center py-4 mt-8">
        <p>&copy; 2024 Child Adoption Portal. All rights reserved.</p>
    </footer>
    	
    		
    	<%}%>
</body>
</html>