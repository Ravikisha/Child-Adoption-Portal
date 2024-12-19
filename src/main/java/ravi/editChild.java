package ravi;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/**
 * Servlet implementation class editChild
 */
@WebServlet("/editChild")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,   // 1 MB
    maxFileSize = 10 * 1024 * 1024,    // 10 MB
    maxRequestSize = 20 * 1024 * 1024  // 20 MB
)
public class editChild extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editChild() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set request character encoding
        request.setCharacterEncoding("UTF-8");

        // Initialize DAO
        ChildDAO childDAO = new ChildDAO(UserDAO.getConnection());

        try {
            // Retrieve parameters from the request
            int id = Integer.parseInt(getPartValue(request.getPart("id"))); // Get child ID for updating
            String name = getPartValue(request.getPart("name"));
            String ageString = getPartValue(request.getPart("age"));
            String description = getPartValue(request.getPart("description"));
            String medicalInfo = getPartValue(request.getPart("medical_info"));
            String gender = getPartValue(request.getPart("gender"));
            String status = getPartValue(request.getPart("status"));

            // Validate and parse age
            int age = 0;
            if (ageString != null && !ageString.isEmpty()) {
                try {
                    age = Integer.parseInt(ageString);
                } catch (NumberFormatException e) {
                    age = 0; // Default age if parsing fails
                    response.getWriter().println("<script>alert('Invalid age input. Defaulting to 0.')</script>");
                }
            }

            // Fetch the existing child record from the database
            Child child = childDAO.getChildById(id);
            if (child == null) {
                response.sendRedirect("admin/admin.jsp?error=Child not found");
                return;
            }

            // Update fields only if they are different
            if (!child.getName().equals(name)) {
                child.setName(name);
            }
            if (child.getAge() != age) {
                child.setAge(age);
            }
            if (!child.getDescription().equals(description)) {
                child.setDescription(description);
            }
            if (!child.getMedicalInfo().equals(medicalInfo)) {
                child.setMedicalInfo(medicalInfo);
            }
            if (!child.getGender().equals(gender)) {
                child.setGender(gender);
            }
            if (!child.getStatus().equals(status)) {
                child.setStatus(status);
            }

            // Handle the file upload (image)
            Part filePart = request.getPart("image");
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = filePart.getSubmittedFileName();
                String imagePath = getServletContext().getRealPath("/images/") + File.separator + fileName;
                // Ensure the directory exists
                File imageDir = new File(getServletContext().getRealPath("/images/"));
                if (!imageDir.exists()) {
                    imageDir.mkdirs();
                }

                // Save new image file only if different
                if (!child.getImagePath().equals("images/" + fileName)) {
                    filePart.write(imagePath);
                    child.setImagePath("images/" + fileName);
                }
            }

            // Update the child record in the database
            childDAO.updateChild(child);

            // Redirect back to the admin page after successful update
            response.sendRedirect("admin/admin.jsp?success=Child updated successfully");

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
