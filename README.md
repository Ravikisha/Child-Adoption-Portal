# Child Adoption Portal

<p float="left">
<img src="https://img.shields.io/badge/license-MIT-green" alt="License: MIT">
<img src="https://img.shields.io/badge/version-1.0-blue" alt="Version: 1.0">
<img src="https://img.shields.io/badge/status-stable-success" alt="Status: Stable">
<img src="https://img.shields.io/badge/platform-web-orange" alt="Platform: Web">
<img src="https://img.shields.io/badge/dependencies-up%20to%20date-important" alt="Dependencies: Up to Date">
</p>
<p float="left">
<img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java">
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
<img src="https://img.shields.io/badge/Apache%20Tomcat-F8DC75?style=for-the-badge&logo=apache&logoColor=white" alt="Apache Tomcat">
<img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=eclipse&logoColor=white" alt="Eclipse">
<img src="https://img.shields.io/badge/Tailwind%20CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind CSS">
<img src="https://img.shields.io/badge/Servlets-000000?style=for-the-badge&logo=java&logoColor=white" alt="Servlets">
<img src="https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white" alt="JSP">
</p>


Welcome to the **Child Adoption Portal** project! This web application is designed to streamline the adoption process by connecting prospective parents with adoption agencies. Built using **JSP and Servlets**, the portal focuses on a user-friendly experience while ensuring data security and compliance.


---

## Table of Contents

- [Child Adoption Portal](#child-adoption-portal)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Flowchart](#flowchart)
  - [Technologies Used](#technologies-used)
  - [Setup Instructions](#setup-instructions)
  - [Usage](#usage)
  - [Project Screenshots](#project-screenshots)
    - [Home Page](#home-page)
    - [Login Page](#login-page)
    - [Register Page](#register-page)
    - [Dashboard](#dashboard)
    - [Profile](#profile)
    - [Admin Page](#admin-page)
    - [Contact Page](#contact-page)

---

## Features

- **User Registration and Login**: Secure access to the portal with user authentication.
- **Dashboard**: View available children for adoption and monitor your requests.
- **Admin Features**:
  - Manage users and adoption requests.
  - Add or update information about children available for adoption.
- **Contact Support**: Get assistance from the team directly via the contact page.
- **Responsive Design**: Optimized for various devices using Tailwind CSS.

---

## Flowchart

![Database Schema](./docs/diagram.png)

---

## Technologies Used

- **Frontend**: JSP, Tailwind CSS
- **Backend**: Servlets, Java
- **Database**: MySQL
- **Server**: Apache Tomcat
- **IDE**: Eclipse

---

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo-url.git
   cd ChildAdoptionPortal
   ```
2. Import the project into Eclipse:
   - Open Eclipse and select `File > Import > Existing Projects into Workspace`.
   - Navigate to the cloned directory and import the project.

3. Configure the database:
   - Create a MySQL database named `child_adoption`.
   - Run the SQL script located in `src/main/resources/db/schema.sql` to set up the tables.
   - Update the `DBConnection` class with your database credentials.

4. Deploy the application:
   - Add the project to an Apache Tomcat server in Eclipse.
   - Start the server and access the application at `http://localhost:8080/ChildAdoption`.

---

## Usage

1. **For Users**:
   - Register and log in to access the portal.
   - Browse children available for adoption and submit adoption requests.
2. **For Admins**:
   - Log in with admin credentials to manage users, adoption requests, and children details.

---

## Project Screenshots

### Home Page
![Home Page 1](./docs/home.png)
![Home Page 2](./docs/home2.png)
![Home Page 3](./docs/home3.png)
![Home Page 4](./docs/home4.png)
![Home Page 5](./docs/home5.png)
![Home Page 6](./docs/home6.png)

### Login Page
![Login Page](./docs/login.png)

### Register Page
![Register Page](./docs/register.png)

### Dashboard
![Dashboard](./docs/dashboard.png)
![Request Page](./docs/requestpage.png)

### Profile
![Profile](./docs/profile.png)

### Admin Page
![Admin Page](./docs/admin1.png)
![Admin Page](./docs/admin2.png)
![Admin Page](./docs/admin3.png)
![Child Add](./docs/childadd.png)

### Contact Page
![Contact Page](./docs/contact.png)

---

**© 2024 Java Jedis**
