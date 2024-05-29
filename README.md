# Event Management 

## Overview
The Event Management System is a Java-based application designed to facilitate the organization and management of events. This system provides features for event creation, participant registration, scheduling, and reporting.

## Features
- Event creation and management
- Participant registration and tracking
- Scheduling and calendar integration
- Reporting and analytics
- User authentication and roles

## Technologies Used
- **Java**: Core programming language used for developing the application
- **MySQL/SQLite**: Database management system for storing and managing data
- **Swing/JavaFX**: (Optional) for building the graphical user interface

## Prerequisites
Before you begin, ensure you have met the following requirements:
- Java Development Kit (JDK) installed
- MySQL/SQLite installed and configured
- Git installed

## Installation
1. **Clone the Repository**
   git clone https://github.com/pariva123/event-management.git
   cd event-management-system

## Set Up the Database

Create a new database for the project. For MySQL:
sql
CREATE DATABASE event_management;
Import the database schema from the database/event_management.sql file.

mysql -u your-username -p event_management < database/event_management.sql

## Configure Database Connection

Open src/main/resources/db.properties.
Update the database connection details:
properties
db.url=jdbc:mysql://localhost:3306/event_management
db.username=your-username
db.password=your-password

## Build and Run the Application

Use your preferred IDE (e.g., IntelliJ IDEA, Eclipse) to open the project.
## Build and run the application.
Usage
## Start the Application
Run the main application class to start the Event Management System.

## Log In or Register
Use the registration page to create a new account or log in with existing credentials.

## Manage Events
Create, update, and delete events.
Register participants and manage their information.
Schedule events and manage the event calendar.

## Generate Reports
Generate reports for event attendance, participant details, and other analytics.

## Project Structure
perl
event-management-system/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── com/
│   │   │   │   ├── eventmanagement/
│   │   │   │   │   ├── Main.java           # Main application class
│   │   │   │   │   ├── controllers/        # MVC controllers
│   │   │   │   │   ├── models/             # Data models
│   │   │   │   │   ├── views/              # UI views (if using Swing/JavaFX)
│   │   ├── resources/
│   │   │   ├── db.properties               # Database configuration
├── database/
│   ├── event_management.sql                # Database schema and initial data
├── README.md                               # Project README file
├── requirements.txt                        # Project dependencies (if any)

## Contributing
Contributions are welcome! Please follow these steps to contribute:

## Fork the repository.
Create a new branch (git checkout -b features).
Make your changes.
Commit your changes (git commit -m 'Add some feature').
Push to the branch (git push origin features).
Create a Pull Request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
If you have any questions or suggestions, feel free to reach out:

Email: parivadhir@gmail.com
GitHub: pariva123
