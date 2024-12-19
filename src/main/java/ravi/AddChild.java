package ravi;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/AddChild")  // URL pattern for the servlet
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,   // 1 MB
    maxFileSize = 10 * 1024 * 1024,    // 10 MB
    maxRequestSize = 20 * 1024 * 1024  // 20 MB
)
public class AddChild extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to the admin page if the user tries to access the servlet directly
        // Show a message
        response.sendRedirect("admin/admin.jsp?error=Access denied. Please use the admin panel.");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set request character encoding to handle form data correctly
        request.setCharacterEncoding("UTF-8");

        // Initialize DAO and Child objects
        ChildDAO childDAO = new ChildDAO(UserDAO.getConnection());
        Child child = new Child();

        try {
            // Retrieve text field parameters using getPart and extract values
            String name = getPartValue(request.getPart("name"));
            String ageString = getPartValue(request.getPart("age"));
            String description = getPartValue(request.getPart("description"));
            String medicalInfo = getPartValue(request.getPart("medical_info"));
            String gender = getPartValue(request.getPart("gender"));
            String status = getPartValue(request.getPart("status"));

            // Handle missing or invalid age (if not a valid integer, default to 0 or other logic)
            int age = 0;
            if (ageString != null && !ageString.isEmpty()) {
                try {
                    age = Integer.parseInt(ageString);
                } catch (NumberFormatException e) {
                    age = 0;  // Set default value
                    response.getWriter().println("<script>alert('Invalid age input. Defaulting to 0.')</script>");
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
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = filePart.getSubmittedFileName();
                String imagePath = request.getServletContext().getRealPath("/images/") + File.separator + fileName;
                // Ensure the directory exists
                File imageDir = new File(request.getServletContext().getRealPath("/images/"));
                if (!imageDir.exists()) {
                    imageDir.mkdirs();
                }
                filePart.write(imagePath);  // Save the file
                child.setImagePath("images/" + fileName);  // Set the relative image path in the child object
            }

            // Add the child to the database using DAO
            childDAO.addChild(child);

            // Redirect back to the admin page after successful addition
            response.sendRedirect("admin/admin.jsp?success=true");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin/admin.jsp?error=" + e.getMessage());
        }
    }

    // Helper method to extract the value from a Part object
    private String getPartValue(Part part) throws IOException {
        if (part == null) {
            return null;
        }
        BufferedReader reader = new BufferedReader(new InputStreamReader(part.getInputStream(), "UTF-8"));
        StringBuilder value = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            value.append(line);
        }
        return value.toString();
    }
}
