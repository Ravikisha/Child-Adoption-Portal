package ravi;
public class AdoptionApplication {
    private int applicationId;
    private int userId;
    private int childId;
    private String message;
    private String status;
    private String createdAt;

    // Constructors
    public AdoptionApplication() {}

    public AdoptionApplication(int applicationId, int userId, int childId, String message, String status, String createdAt) {
        this.applicationId = applicationId;
        this.userId = userId;
        this.childId = childId;
        this.message = message;
        this.status = status;
        this.createdAt = createdAt;
    }

    // Getters and Setters
    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getChildId() {
        return childId;
    }

    public void setChildId(int childId) {
        this.childId = childId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    // toString() method
    @Override
    public String toString() {
        return "AdoptionApplication{" +
                "applicationId=" + applicationId +
                ", userId=" + userId +
                ", childId=" + childId +
                ", message='" + message + '\'' +
                ", status='" + status + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }
}
