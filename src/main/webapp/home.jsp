<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <%@ page import="ravi.User" %>
    <%
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    
    <!-- Navigation Bar -->
    <header class="bg-blue-600 text-white shadow-md">
        <div class="container mx-auto flex justify-between items-center py-4 px-6">
            <h1 class="text-xl font-bold">Child Adoption Portal</h1>
            <nav>
                <a href="profile.jsp" class="px-4 hover:underline">My Profile</a>
                <% if (user.getAdmin() == 1) { %>
                    <a href="admin/admin.jsp" class="px-4 hover:underline">Admin</a>
                <% } %>
                <a href="logout.jsp" class="px-4 hover:underline">Logout</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto py-8 px-6">
        <h2 class="text-2xl font-semibold text-gray-800 mb-6">Available Children for Adoption</h2>

        <!-- Children Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <!-- Iterate over child list and render each child card -->
            <%@ page import="ravi.Child" %>
                <%@ page import="java.util.List" %>
                <%@ page import="java.util.ArrayList" %>
                <%@ page import="ravi.UserDAO" %>
                <%@ page import="ravi.ChildDAO" %>
                <%          
                ChildDAO childDAO = new ChildDAO(UserDAO.getConnection()); 
            %>
            <%

                List<Child> childrenList = childDAO.getAllChildren(); // Assuming this is set in a servlet
                if (childrenList != null && !childrenList.isEmpty()) {
                    for (Child child : childrenList) {
            %>
                <!-- Child Card -->
                <div class="bg-white rounded-lg shadow-md p-4">
                    <img src="<%= child.getImagePath() %>" alt="Child Image" class="w-full h-48 object-contain rounded-md mb-4">
                    <h3 class="text-lg font-semibold text-gray-800"><%= child.getName() %></h3>
                    <p class="text-gray-600">Age: <%= child.getAge() %> years</p>
                    <p class="text-gray-600">Gender: <%= child.getGender() %></p>
                    <p class="text-gray-600 truncate">Description: <%= child.getDescription() %></p>
                    <p class="text-gray-600 truncate mb-2">Medical Info: <%= child.getMedicalInfo() %></p>
                    
                    <!-- Status Badge -->
                    <span class="inline-block px-3 py-1 rounded-full text-sm 
                        <%= child.getStatus().equalsIgnoreCase("Available") ? "bg-green-100 text-green-800" : "bg-red-100 text-red-800" %>">
                        <%= child.getStatus() %>
                    </span>

                    <!-- Adopt Button -->
                    <% if (child.getStatus().equalsIgnoreCase("Available")) { %>
                            <button type="submit" class="mt-2 w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700"
                                onclick="window.location.href='applyForAdoption.jsp?id=<%= child.getChildId() %>'"
                            >
                                Apply for Adoption
                            </button>
                    <% } %>
                </div>
            <%
                    }
                } else {
            %>
                <!-- No Children Available Message -->
                <div class="col-span-full text-center text-gray-600">
                    <p>No children available for adoption at the moment. Please check back later.</p>
                </div>
            <%
                }
            %>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-blue-600 text-white text-center py-4 mt-8">
        <p>&copy; 2024 Java Jedis. All rights reserved.</p>
    </footer>
</body>
</html>