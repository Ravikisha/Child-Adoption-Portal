package ravi;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ChildDAO {
    private Connection connection;

    // Constructor to initialize the database connection
    public ChildDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to add a new child
    public boolean addChild(Child child) {
        String query = "INSERT INTO children (name, age, gender, description, medical_info, status, image_path) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, child.getName());
            stmt.setInt(2, child.getAge());
            stmt.setString(3, child.getGender());
            stmt.setString(4, child.getDescription());
            stmt.setString(5, child.getMedicalInfo());
            stmt.setString(6, child.getStatus());
            stmt.setString(7, child.getImagePath());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to get a child by ID
    public Child getChildById(int childId) {
        String query = "SELECT * FROM children WHERE child_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, childId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new Child(
                        rs.getInt("child_id"),
                        rs.getString("name"),
                        rs.getInt("age"),
                        rs.getString("gender"),
                        rs.getString("description"),
                        rs.getString("medical_info"),
                        rs.getString("status"),
                        rs.getString("image_path")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Method to get all children
    public List<Child> getAllChildren() {
        List<Child> children = new ArrayList<>();
        String query = "SELECT * FROM children";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Child child = new Child(
                        rs.getInt("child_id"),
                        rs.getString("name"),
                        rs.getInt("age"),
                        rs.getString("gender"),
                        rs.getString("description"),
                        rs.getString("medical_info"),
                        rs.getString("status"),
                        rs.getString("image_path")
                );
                children.add(child);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return children;
    }

    // Method to update child information
    public boolean updateChild(Child child) {
        String query = "UPDATE children SET name = ?, age = ?, gender = ?, description = ?, medical_info = ?, status = ?, image_path = ? WHERE child_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, child.getName());
            stmt.setInt(2, child.getAge());
            stmt.setString(3, child.getGender());
            stmt.setString(4, child.getDescription());
            stmt.setString(5, child.getMedicalInfo());
            stmt.setString(6, child.getStatus());
            stmt.setString(7, child.getImagePath());
            stmt.setInt(8, child.getChildId());

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to delete a child by ID
    public boolean deleteChild(int childId) {
        String query = "DELETE FROM children WHERE child_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, childId);

            int rowsDeleted = stmt.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    // Method to change the status of a child
    public boolean changeChildStatus(int childId, String status) {
        String query = "UPDATE children SET status = ? WHERE child_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, status);
            stmt.setInt(2, childId);

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
