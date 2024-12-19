<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Child</title>
    <script src="https://cdn.tailwindcss.com"></script>

</head>
<body>
  				<%@ page import="ravi.Child" %>
                <%@ page import="java.util.List" %>
                <%@ page import="java.util.ArrayList" %>
                <%@ page import="ravi.UserDAO" %>
                <%@ page import="ravi.ChildDAO" %>

    <% 
        ChildDAO childDAO = new ChildDAO(UserDAO.getConnection());
        int id = Integer.parseInt(request.getParameter("id"));
        Child child = childDAO.getChildById(id);
    %>


	<div
        id="childFormModal"
        class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center"
      >
        <div class="bg-white p-5 rounded-lg shadow-md w-full max-w-md">
          <h2 id="formTitle" class="text-2xl font-semibold mb-4">
            Update the Child
          </h2>
          <form id="childForm" action="/ChildAdoption/editChild" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="<%=child.getChildId()%>" />
            <div class="mb-4">
              <label class="block mb-1">Name</label>
              <input
                type="text"
                id="childName"
                name="name"
                class="w-full p-2 border rounded-lg"
                value="<%=child.getName()%>"
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
                value="<%=child.getAge()%>"
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
                ><%=child.getDescription()%></textarea>
            </div>
            <div class="mb-4">
                <label class="block mb-1">Medical Info</label>
                <textarea
                  id="medical_info"
                  name="medical_info"
                  class="w-full p-2 border rounded-lg"
                  required
                ><%=child.getMedicalInfo()%></textarea>
            </div>
            <div class="mb-4">
              <label class="block mb-1">Gender</label>
              <select id="childGender" 
              name="gender"
              class="w-full p-2 border rounded-lg">
                <option value="Male" <%=child.getGender().equals("Male") ? "selected": "" %> >Male</option>
                <option value="Female" <%=child.getGender().equals("Female") ? "selected": "" %> >Female</option>
              </select>
            </div>
            <div class="mb-4">
              <label class="block mb-1">Image</label>
              <input
                type="file"
                id="image"
                name="image"
                class="w-full p-2 border rounded-lg"
              />
            </div>
            <div class="mb-4">
              <label class="block mb-1">Status</label>
              <select 
              id="childStatus"
              name="status"
              class="w-full p-2 border rounded-lg">
                <option value="Available" <%=child.getStatus().equals("Available") ? "selected": "" %> >Available</option>
                <option value="Adopted" <%=child.getStatus().equals("Adopted") ? "selected": "" %> >Adopted</option>
              </select>
            </div>
            <div class="flex justify-end">
              <button
                type="button"
                id="cancelFormBtn"
                class="mr-2 px-4 py-2 bg-gray-500 text-white rounded-lg"
                onclick="window.location.href='/ChildAdoption/admin/admin.jsp'"
              >
                Cancel
              </button>
              <button
                type="submit"
                class="px-4 py-2 bg-blue-500 text-white rounded-lg"
              >
                Update
              </button>
            </div>
          </form>
        </div>
      </div>
</body>
</html>