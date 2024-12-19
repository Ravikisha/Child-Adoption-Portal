<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
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
 <!-- Navigation Bar -->
    <header class="bg-blue-600 text-white shadow-md">
        <div class="container mx-auto flex justify-between items-center py-4 px-6">
            <h1 class="text-xl font-bold">Child Adoption Portal</h1>
            <nav>
                <a href="home.jsp" class="px-4 hover:underline">Home</a>
                <a href="logout.jsp" class="px-4 hover:underline">Logout</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto py-8 px-6">
        <h2 class="text-2xl font-semibold text-gray-800 mb-6">My Profile</h2>
        <%
        User user = (User) session.getAttribute("user");
        Connection connection = new UserDAO().getConnection();
        
        %>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- User Profile Section -->
            <div class="bg-white rounded-lg shadow-md p-6">
                <h3 class="text-lg font-semibold text-gray-800 mb-4">Profile Information</h3>
                <form action="updateUserProfile.jsp" method="post">
                    <div class="mb-4">
                        <label for="fullName" class="block text-gray-700 font-medium mb-2">Full Name</label>
                        <input type="text" id="fullName" name="fullName" value="<%= user.getUsername() %>" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>
                    </div>

                    <div class="mb-4">
                        <label for="email" class="block text-gray-700 font-medium mb-2">Email</label>
                        <input type="email" id="email" name="email" value="<%= user.getEmail() %>" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" readonly>
                    </div>

                    <div class="mb-4">
                        <label for="phone" class="block text-gray-700 font-medium mb-2">Phone Number</label>
                        <input type="text" id="phone" name="phone" value="<%= user.getPhone() %>" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>
                    </div>

                    <div class="mb-4">
                        <label for="address" class="block text-gray-700 font-medium mb-2">Address</label>
                        <input type="text" id="address" name="address" value="<%= user.getAddress() %>" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500" required>
                    </div>

                    <div class="mb-4">
                        <label for="password" class="block text-gray-700 font-medium mb-2">Password</label>
                        <input type="password" id="password" name="password" class="w-full p-3 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>

                    <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700">Update Profile</button>
                </form>
            </div>

            <!-- User's Adoption Applications Section -->
            <div class="bg-white rounded-lg shadow-md p-6">
                <h3 class="text-lg font-semibold text-gray-800 mb-4">My Adoption Applications</h3>
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white">
                        <thead>
                            <tr>
                                <th class="py-2 px-4 text-left bg-blue-600 text-white">Child Name</th>
                                <th class="py-2 px-4 text-left bg-blue-600 text-white">Message</th>
                                <th class="py-2 px-4 text-left bg-blue-600 text-white">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<AdoptionApplication> applications = new AdoptionApplicationDAO(connection).getApplicationsByUser(user.getId());
                                if (applications != null && !applications.isEmpty()) {
                                    for (AdoptionApplication app : applications) {
                            %>
                                <tr>
                                    <td class="py-2 px-4 border-b"><%
                                        Child child = new ChildDAO(connection).getChildById(app.getChildId());
                                        out.print(child.getName());
                                        %></td>
                                    <td class="py-2 px-4 border-b"><%= app.getMessage() %></td>
                                    <td class="py-2 px-4 border-b">
                                        <span class="<%= app.getStatus().equalsIgnoreCase("Approved") ? "text-green-600" : app.getStatus().equalsIgnoreCase("Submitted") ? "text-yellow-600" : "text-red-600" %>">
                                            <%= app.getStatus() %>
                                        </span>
                                    </td>
                                </tr>
                            <%
                                    }
                                } else {
                            %>
                                <tr>
                                    <td colspan="3" class="py-4 text-center text-gray-600">No applications found.</td>
                                </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-blue-600 text-white text-center py-4 mt-8">
        <p>&copy; 2024 Java Jedis. All rights reserved.</p>
    </footer>

</body>
</html>