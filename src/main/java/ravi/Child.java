package ravi;

public class Child {
    private int childId;
    private String name;
    private int age;
    private String gender;
    private String description;
    private String medicalInfo;
    private String status;
    private String imagePath;

    // Constructors
    public Child() {}

    public Child(int childId, String name, int age, String gender, String description, String medicalInfo, String status, String imagePath) {
        this.childId = childId;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.description = description;
        this.medicalInfo = medicalInfo;
        this.status = status;
        this.imagePath = imagePath;
    }

    // Getters and Setters
    public int getChildId() {
        return childId;
    }

    public void setChildId(int childId) {
        this.childId = childId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMedicalInfo() {
        return medicalInfo;
    }

    public void setMedicalInfo(String medicalInfo) {
        this.medicalInfo = medicalInfo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    // toString() method
    @Override
    public String toString() {
        return "Child{" +
                "childId=" + childId +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", description='" + description + '\'' +
                ", medicalInfo='" + medicalInfo + '\'' +
                ", status='" + status + '\'' +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }
}
