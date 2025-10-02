# Rapid Drives - Car Rental System

A comprehensive car rental web application built with JSP (Java Server Pages) to Learn J2EE features and JDBC integration for database operations.

## 🚗 Project Overview

Rapid Drives is a car rental management system that allows users to browse available cars, make bookings, and manage their reservations. The system includes separate interfaces for customers and administrators with robust booking management capabilities.

## 🎯 Project Motivation

- **Learning J2EE**: Understanding Java Enterprise Edition features and architecture
- **JDBC Mastery**: Implementing database operations using Java Database Connectivity
- **Web Development**: Building dynamic web applications with JSP and Servlets
- **Real-world Application**: Creating a practical business solution for car rental management

## ✨ Features

### 👤 Customer Features
- **Car Browsing**: View all available cars with details and specifications
- **Car Booking**: Select cars and book for specific date ranges
- **Checkout Process**: Fill rental start and end dates with booking confirmation
- **Booking Management**: View personal booking history and status
- **Real-time Availability**: See only available cars based on booking dates

### 👨‍💼 Admin Features
- **Car Management**: Add new cars to the inventory with complete details
- **Car Editing**: Modify existing car information and specifications
- **Car Deletion**: Remove cars from the rental fleet
- **Booking Management**: View and manage all customer bookings
- **Booking Approval/Rejection**: Accept or reject bookings based on availability and other factors
- **Manual Status Management**: Update car availability status for offline/local bookings
- **Inventory Control**: Comprehensive control over the entire car fleet

## 🛠️ Technology Stack

- **Frontend**: JSP (Java Server Pages), HTML, CSS, JavaScript
- **Backend**: Java Servlets, J2EE
- **Database**: MySQL (via JDBC)
- **Architecture**: MVC Pattern
- **Server**: Apache Tomcat

## 📋 Prerequisites

- Java JDK 8 or higher
- Apache Tomcat Server
- MySQL Database
- JSP & Servlet compatible IDE (Eclipse/IntelliJ/NetBeans)

## 🗂️ Project Structure

```
rapid-drives/
│
├── WebContent/
│   ├── WEB-INF/
│   │   ├── web.xml
│   │   └── classes/
│   ├── css/
│   ├── js/
│   └── jsp/
│       ├── user/
│       │   ├── home.jsp
│       │   ├── booking.jsp
│       │   └── mybookings.jsp
│       ├── admin/
│       │   ├── dashboard.jsp
│       │   ├── addcar.jsp
│       │   ├── managecars.jsp
│       │   └── managebookings.jsp
│       └── components/
│
│
└── Database/
    └── rapiddb.sql      # Database Schema
```

## 🚀 Installation & Setup

### 1. Database Setup
```sql
CREATE DATABASE rapiddb;
USE rapiddb;
-- Import the provided SQL schema file
```

### 2. Configuration
Update database connection in `DatabaseConnection.java`:
```java
public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/rapiddb";
    private static final String USERNAME = "your_username";
    private static final String PASSWORD = "your_password";
}
```

### 3. Server Deployment
1. Import project into your IDE (Eclipse/IntelliJ)
2. Configure Apache Tomcat server
3. Build the project and resolve dependencies
4. Deploy on Tomcat server
5. Access via: `http://localhost:8080/rapid-drives`

## 💾 Database Schema

### Main Tables:
- **cars**: car_id, model, brand, type, price_per_day, available_status, image_url
- **users**: user_id, name, email, password, role
- **bookings**: booking_id, user_id, car_id, start_date, end_date, total_amount, status
- **admin_actions**: action_id, admin_id, booking_id, action_type, remarks

## 🔄 Workflow

### Customer Booking Process:
1. **Browse Cars**: Customer views available cars on homepage
2. **Select Car**: Chooses desired car for rental
3. **Checkout**: Enters rental start and end dates
4. **Booking Confirmation**: System calculates total and creates booking
5. **Status Update**: Car availability status changes to `false`
6. **View Bookings**: Customer can track booking status

### Admin Management Process:
1. **Car Inventory**: Add/edit/delete cars from system
2. **Booking Oversight**: Monitor all customer bookings
3. **Approval/Rejection**: Manage booking requests based on availability
4. **Manual Updates**: Handle offline bookings by updating car status
5. **Fleet Management**: Comprehensive control over car availability

## 🎯 J2EE & JDBC Features Implemented

### J2EE Components:
- **JSP**: Dynamic web page rendering
- **Servlets**: Request handling and business logic
- **JavaBeans**: Data encapsulation and transfer
- **MVC Architecture**: Separation of concerns

### JDBC Operations:
- **Database Connection**: Connection pooling and management
- **CRUD Operations**: Create, Read, Update, Delete functionality
- **Transaction Management**: Ensuring data consistency
- **Prepared Statements**: SQL injection prevention
- **ResultSet Handling**: Efficient data retrieval and processing

## 📱 Key Functionalities

### Car Management
- Add new cars with specifications and images
- Update car details and pricing
- Delete cars from inventory
- Manage availability status

### Booking System
- Date-based availability checking
- Automatic price calculation
- Booking status tracking
- Conflict prevention for overlapping dates

### User Management
- Customer registration and authentication
- Booking history and tracking
- Role-based access control (User/Admin)

## 🔒 Security Features

- SQL Injection prevention using Prepared Statements
- Input validation and sanitization
- Session management
- Role-based access control
- Secure database credentials management

## 📊 Future Enhancements

- Payment gateway integration
- Email notifications for booking confirmations
- Advanced search and filtering options
- Car location and pickup points
- Customer reviews and ratings system
- Mobile-responsive design

## 🐛 Troubleshooting

### Common Issues:
1. **Database Connection Error**: Check MySQL service and credentials
2. **JSP Compilation Error**: Verify Tomcat configuration and JDK version
3. **404 Errors**: Ensure correct deployment context path
4. **JDBC Driver Issues**: Add MySQL connector to classpath

### Debugging:
- Check Tomcat logs for detailed error messages
- Verify database table structures match the code
- Ensure all required JAR files are in WEB-INF/lib

## 📚 Learning Outcomes

This project demonstrates:
- Understanding of J2EE web application architecture
- Proficiency in JDBC for database operations
- MVC pattern implementation in Java web applications
- Session management and state handling
- Database design and relationship management
- Frontend-backend integration using JSP

---

**Developed by**: [Your Name]  
**Purpose**: Educational project to master J2EE and JDBC concepts  
**Technology**: JSP, Servlets, JDBC, MySQL, Tomcat
