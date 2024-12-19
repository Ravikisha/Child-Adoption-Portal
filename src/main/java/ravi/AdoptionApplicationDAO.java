package ravi;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdoptionApplicationDAO {
    private Connection connection;

    // Constructor to initialize the database connection
    public AdoptionApplicationDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to add a new adoption application
    public boolean addApplication(AdoptionApplication application) {
        String query = "INSERT INTO adoption_applications (user_id, child_id, message, status) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, application.getUserId());
            stmt.setInt(2, application.getChildId());
            stmt.setString(3, application.getMessage());
            stmt.setString(4, application.getStatus());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to get an application by ID
    public AdoptionApplication getApplicationById(int applicationId) {
        String query = "SELECT * FROM adoption_applications WHERE application_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, applicationId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new AdoptionApplication(
                        rs.getInt("application_id"),
                        rs.getInt("user_id"),
                        rs.getInt("child_id"),
                        rs.getString("message"),
                        rs.getString("status"),
                        rs.getString("created_at")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Method to get all adoption applications
    public List<AdoptionApplication> getAllApplications() {
        List<AdoptionApplication> applications = new ArrayList<>();
        String query = "SELECT * FROM adoption_applications ORDER BY submitted_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                AdoptionApplication application = new AdoptionApplication(
                        rs.getInt("application_id"),
                        rs.getInt("user_id"),
                        rs.getInt("child_id"),
                        rs.getString("message"),
                        rs.getString("status"),
                        rs.getString("submitted_at")
                );
                applications.add(application);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return applications;
    }

    // Method to update the status of an adoption application
    public boolean updateApplicationStatus(int applicationId, String status) {
        String query = "UPDATE adoption_applications SET status = ? WHERE application_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, status);
            stmt.setInt(2, applicationId);

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to delete an adoption application
    public boolean deleteApplication(int applicationId) {
        String query = "DELETE FROM adoption_applications WHERE application_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, applicationId);

            int rowsDeleted = stmt.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to get all adoption applications for a specific user
    public List<AdoptionApplication> getApplicationsByUser(int userId) {
        List<AdoptionApplication> applications = new ArrayList<>();
        String query = "SELECT * FROM adoption_applications WHERE user_id = ? ORDER BY submitted_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                AdoptionApplication application = new AdoptionApplication(
                        rs.getInt("application_id"),
                        rs.getInt("user_id"),
                        rs.getInt("child_id"),
                        rs.getString("message"),
                        rs.getString("status"),
                        rs.getString("submitted_at")
                );
                applications.add(application);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return applications;
    }
}
