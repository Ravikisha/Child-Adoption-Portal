<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Admin Dashboard</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css"
    />
  </head>
  <body>
    <%@ page import="ravi.User" %> 
    <% User user = (User) session.getAttribute("user");
    if (user == null) {
    response.sendRedirect("../login.jsp");
 	return; } 
    if (user.getAdmin() != 1) {
    response.sendRedirect("../home.jsp"); return; } %>
    <div class="min-h-screen bg-gray-100 p-5">
        
      <h1 class="text-3xl text-center font-bold mb-5">Admin Dashboard</h1>


      <!-- Child Management Section -->
      <div class="bg-white p-5 rounded-lg shadow-md mb-10">
        <h2 class="text-2xl text-center font-semibold mb-4">Manage Children</h2>

        <!-- Add New Child Button -->
        <button
          id="addChildBtn"
          class="mb-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600"
        >
          Add New Child
        </button>

        <!-- Table of Children -->
        <div class="overflow-x-auto">
          <table class="w-full bg-white rounded-lg border">
            <thead>
              <tr class="bg-gray-200 text-left">
                <th class="p-3">ID</th>
                <th class="p-3">Name</th>
                <th class="p-3">Age</th>
                <th class="p-3">Gender</th>
                <th class="p-3">Description</th>
                <th class="p-3">Medical Info</th>
                <th class="p-3">Status</th>
                <th class="p-3">Actions</th>
              </tr>
            </thead>
            <tbody id="childrenTableBody">
                <%@ page import="ravi.Child" %>
                <%@ page import="java.util.List" %>
                <%@ page import="java.util.ArrayList" %>
                <%@ page import="ravi.UserDAO" %>
                <%@ page import="ravi.ChildDAO" %>
                <%          
                ChildDAO childDAO = new ChildDAO(UserDAO.getConnection()); 
                List<Child> children = childDAO.getAllChildren(); 
                for (Child child : children) { 
                %>
                <tr class="border-b">
                  <td class="p-3"><%= child.getChildId() %></td>
                  <td class="p-3"><%= child.getName() %></td>
                  <td class="p-3"><%= child.getAge() %></td>
                  <td class="p-3"><%= child.getGender() %></td>
                  <td class="p-3"><%= child.getDescription().length() > 50 ? child.getDescription().substring(0, 50) + "..." : child.getDescription() %></td>
                  <td class="p-3"><%= child.getMedicalInfo().length() > 50 ? child.getMedicalInfo().substring(0, 50) + "..." : child.getMedicalInfo() %></td>
                  <td class="p-3">
                    <select class="bg-gray-100 p-2 rounded-lg"
                    onchange="window.location.href='adoptionChange.jsp?id=<%= child.getChildId() %>&status=' + this.value">
                      <!-- <option>Available</option>
                      <option>Adopted</option> -->
                      <option value="Available" <%= child.getStatus().equals("Available") ? "selected" : "" %>>Available</option>
                        <option value="Adopted" <%= child.getStatus().equals("Adopted") ? "selected" : "" %>>Adopted</option>
                    </select>
                  </td>
                  <td class="p-3">
                    <button
                      class="px-3 py-1 bg-green-500 text-white rounded-lg hover:bg-green-600"
                      onclick="window.location.href='editChild.jsp?id=<%= child.getChildId() %>'"
                    >
                      Edit
                    </button>
                    <button
                      class="px-3 py-1 bg-red-500 text-white rounded-lg hover:bg-red-600"
                      onclick="window.location.href='deleteChild.jsp?id=<%= child.getChildId() %>'"
                    >
                      Delete
                    </button>
                  </td>
                </tr>
                <% } %>
              <!-- </tr> -->
            </tbody>
          </table>
        </div>
      </div>

      
       


      <!-- Adoption Applications Section -->
      <div class="bg-white p-5 rounded-lg shadow-md mb-10">
        <h2 class="text-2xl text-center font-semibold mb-4">Adoption Applications</h2>

        <!-- Table of Applications -->
        <div class="overflow-x-auto">
          <table class="w-full bg-white rounded-lg border">
            <thead>
              <tr class="bg-gray-200 text-left">
                <th class="p-3">Application ID</th>
                <th class="p-3">User ID</th>
                <th class="p-3">Child ID</th>
                <th class="p-3">Message</th>
                <th class="p-3">Status</th>
                <th class="p-3">Actions</th>
              </tr>
            </thead>
            <tbody id="applicationsTableBody">
              <%@ page import="ravi.AdoptionApplication" %>
                <%@ page import="ravi.AdoptionApplicationDAO" %>
                <%
                AdoptionApplicationDAO applicationDAO = new AdoptionApplicationDAO(UserDAO.getConnection());
                List<AdoptionApplication> applications = applicationDAO.getAllApplications();
                for (AdoptionApplication adoptApplication : applications) {
                %>
                <tr class="border-b">
                  <td class="p-3"><%= adoptApplication.getApplicationId() %></td>
                  <td class="p-3"><%
                        UserDAO userDAO = new UserDAO();
                        String userName = userDAO.getUserById(adoptApplication.getUserId()).getUsername();
                        out.print("("+adoptApplication.getUserId()+") "+userName);
                    %></td>
                  <td class="p-3"><%
                        String childName = childDAO.getChildById(adoptApplication.getChildId()).getName();
                        out.print("("+adoptApplication.getChildId()+") "+childName);
                    %></td>
                  <td class="p-3"><%= adoptApplication.getMessage() %></td>
                  <td class="p-3"><%= adoptApplication.getStatus() %></td>
                  <td class="p-3">
                    <button
                      class="px-3 py-1 bg-blue-500 text-white rounded-lg hover:bg-blue-600"
                      onclick="window.location.href='adoptionStatus.jsp?id=<%= adoptApplication.getApplicationId() %>&status=Accepted'"
                    >
                      Accept
                    </button>
                    <button
                      class="px-3 py-1 bg-red-500 text-white rounded-lg hover:bg-red-600"
                        onclick="window.location.href='adoptionStatus.jsp?id=<%= adoptApplication.getApplicationId() %>&status=Rejected'"
                    >
                      Reject
                    </button>
                  </td>
                </tr>
                <% } %>


            </tbody>
          </table>
        </div>
      </div>
      <!-- User Table Section(id, username, email, created_at, admin) -->
      <div class="bg-white p-5 rounded-lg shadow-md mb-10">
        <h2 class="text-2xl text-center font-semibold mb-4">Manage Users</h2>

        <!-- Table of Users -->
        <div class="overflow-x-auto">
        <table class="w-full bg-white rounded-lg border">
            <thead>
            <tr class="bg-gray-200 text-left">
                <th class="p-3">ID</th>
                <th class="p-3">Username</th>
                <th class="p-3">Email</th>
                <th class="p-3">Phone</th>
                <th class="p-3">Address</th>
                <th class="p-3">Admin</th>
                <th class="p-3">Delete</th>
            </tr>
            </thead>
            <tbody id="usersTableBody">
            <%@ page import="ravi.User" %>
            <%@ page import="java.util.List" %>
            <%@ page import="java.util.ArrayList" %>
            <%@ page import="ravi.UserDAO" %>
            <%
            List<User> users = UserDAO.getAllUsers();
            for (User iuser : users) {
            %>
            <tr class="border-b">
                <td class="p-3"><%= iuser.getId() %></td>
                <td class="p-3"><%= iuser.getUsername() %></td>
                <td class="p-3"><%= iuser.getEmail() %></td>
                <td class="p-3"><%= iuser.getPhone() %></td>
                <td class="p-3"><%= iuser.getAddress() %></td>
                <td class="p-3"><%= iuser.getAdmin() == 1 ? "Yes" : "No" %></td>
                <td class="p-3">
                <button
                    class="px-3 py-1 bg-red-500 text-white rounded-lg hover:bg-red-600"
                    onclick="window.location.href='deleteUser.jsp?id=<%= iuser.getId() %>'"
                >
                Delete
                </button>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    </div>
    </div>

      <!-- Contact Us Section -->
      <!-- user_id, name, email, phone, subject, message, created_at -->

      <div class="bg-white p-5 rounded-lg shadow-md mb-10">
        <h2 class="text-2xl text-center font-semibold mb-4">Contact US Messages</h2>

        <!-- Table of Users -->
        <div class="overflow-x-auto">
        <table class="w-full bg-white rounded-lg border">
            <thead>
            <tr class="bg-gray-200 text-left">
                <th class="p-3">ID</th>
                <th class="p-3">Name</th>
                <th class="p-3">Email</th>
                <th class="p-3">Phone</th>
                <th class="p-3">Subject</th>
                <th class="p-3">Message</th>
                <th class="p-3">Created At</th>
                <th class="p-3">Delete</th>
            </tr>
            </thead>
            <tbody id="usersTableBody2">
            
            <%@ page import="java.sql.*" %>
            <%
              Connection connection = UserDAO.getConnection();
              Statement statement = connection.createStatement();
              ResultSet resultSet = statement.executeQuery("SELECT * FROM contact_messages");
              while (resultSet.next()) {
            %>
            <tr class="border-b">
                <td class="p-3"><%= resultSet.getInt("message_id") %></td>
                <td class="p-3"><%= resultSet.getString("name") %></td>
                <td class="p-3"><%= resultSet.getString("email") %></td>
                <td class="p-3"><%= resultSet.getString("phone") %></td>
                <td class="p-3"><%= resultSet.getString("subject") %></td>
                <td class="p-3"><%= resultSet.getString("message") %></td>
                <td class="p-3"><%= resultSet.getString("created_at") %></td>
                <td class="p-3">
                <button
                    class="px-3 py-1 bg-red-500 text-white rounded-lg hover:bg-red-600"
                    onclick="window.location.href='deleteMessage.jsp?id=<%= resultSet.getInt("message_id") %>'"
                >
                Delete
                </button>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    </div>
    </div>

      <!-- Add/Edit Child Form -->
      <div
        id="childFormModal"
        class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center"
      >
        <div class="bg-white p-5 rounded-lg shadow-md w-full max-w-md">
          <h2 id="formTitle" class="text-2xl font-semibold mb-4">
            Add New Child
          </h2>
          <form id="childForm" action="/ChildAdoption/AddChild" method="post" enctype="multipart/form-data">
            <div class="mb-4">
              <label class="block mb-1">Name</label>
              <input
                type="text"
                id="childName"
                name="name"
                class="w-full p-2 border rounded-lg"
                required
              />
            </div>
            <div class="mb-4">
              <label class="block mb-1">Age</label>
              <input
                type="number"
                id="childAge"
                name="age"
                class="w-full p-2 border rounded-lg"
                required
              />
            </div>
            <div class="mb-4">
                <label class="block mb-1">Description</label>
                <textarea
                  id="description"
                  name="description"
                  class="w-full p-2 border rounded-lg"
                  required
                ></textarea>
            </div>
            <div class="mb-4">
                <label class="block mb-1">Medical Info</label>
                <textarea
                  id="medical_info"
                  name="medical_info"
                  class="w-full p-2 border rounded-lg"
                  required
                ></textarea>
            </div>
            <div class="mb-4">
              <label class="block mb-1">Gender</label>
              <select id="childGender" 
              name="gender"
              class="w-full p-2 border rounded-lg">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
              </select>
            </div>
            <div class="mb-4">
              <label class="block mb-1">Image</label>
              <input
                type="file"
                id="image"
                name="image"
                class="w-full p-2 border rounded-lg"
                required
              />
            </div>
            <div class="mb-4">
              <label class="block mb-1">Status</label>
              <select 
              id="childStatus"
              name="status"
              class="w-full p-2 border rounded-lg">
                <option value="Available">Available</option>
                <option value="Adopted">Adopted</option>
              </select>
            </div>
            <div class="flex justify-end">
              <button
                type="button"
                id="cancelFormBtn"
                class="mr-2 px-4 py-2 bg-gray-500 text-white rounded-lg"
              >
                Cancel
              </button>
              <button
                type="submit"
                class="px-4 py-2 bg-blue-500 text-white rounded-lg"
              >
                Save
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <script>
      const addChildBtn = document.getElementById("addChildBtn");
      const childFormModal = document.getElementById("childFormModal");
      const cancelFormBtn = document.getElementById("cancelFormBtn");

        addChildBtn.addEventListener("click", () => {
            childFormModal.classList.remove("hidden");
        });
        childFormModal.addEventListener("click", (e) => {
            if (e.target === childFormModal) {
                childFormModal.classList.add("hidden");
            }
        });
        cancelFormBtn.addEventListener("click", () => {
            childFormModal.classList.add("hidden");
        });

    </script>
  </body>
</html>
