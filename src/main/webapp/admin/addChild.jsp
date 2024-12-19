<%@ page language="java" import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*, javax.servlet.annotation.*" %>
<%@ page import="javax.servlet.http.Part" %>
<%@ page import="ravi.Child" %> 
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="ravi.UserDAO" %> 
<%@ page import="ravi.ChildDAO" %>

<%
    // Initialize DAO and Child objects
    ChildDAO childDAO = new ChildDAO(UserDAO.getConnection());
    Child child = new Child();

    // System.out.println(request.getParameter("name"));
    // Check if the form is multipart (which means file upload is present)
    
        try {
            // Retrieve text field parameters using getParameter
            String name = request.getParameter("name");
            String ageString = request.getParameter("age");
            String description = request.getParameter("description");
            String medicalInfo = request.getParameter("medical_info");
            String gender = request.getParameter("gender");
            String status = request.getParameter("status");

            // Handle missing or invalid age (if not a valid integer, default to 0 or other logic)
            int age = 0;
            if (ageString != null && !ageString.isEmpty()) {
                try {
                    age = Integer.parseInt(ageString);
                } catch (NumberFormatException e) {
                    // Handle invalid age format, set default value
                    age = 0;  // Or handle appropriately
                    out.println("<script>alert('Invalid age input. Defaulting to 0.')</script>");
                }
            }

            // Set the child object attributes
            child.setName(name);
            child.setAge(age);
            child.setDescription(description);
            child.setMedicalInfo(medicalInfo);
            child.setGender(gender);
            child.setStatus(status);

            // Handle the file upload (image)
            Part filePart = request.getPart("image");  // Get the file part
            if (filePart != null) {
                String fileName = filePart.getSubmittedFileName();
                String imagePath = getServletContext().getRealPath("/images/") + fileName;
                filePart.write(imagePath);  // Save the file
                child.setImagePath(imagePath);  // Set the image path in the child object
            }

            // Add the child to the database using DAO
            childDAO.updateChild(child);

            // Redirect back to the admin page after successful addition
            response.sendRedirect("admin.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin.jsp?error=" + e.getMessage());
        }
%>
