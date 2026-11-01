# Transport Planner Web Application

A Java-based web application designed to simplify public transportation route management and ticket booking. The application provides a platform for users to explore transport routes and manage bookings, while administrators can manage routes and user information.

## 🚀 Features

- **User Management:** User registration and login.
- **Route Management:** Manage and view available transport routes.
- **Ticket Booking:** Book transport tickets through the application.
- **Admin Dashboard:** Manage users, routes and bookings.
- **Database Integration:** Store and retrieve application data using MySQL.
- **Dynamic Web Pages:** Interactive pages using JSP and Servlets.

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| HTML | Page structure |
| CSS | Styling and layout |
| JavaScript | Client-side functionality |
| Java | Backend development |
| JSP | Dynamic web pages |
| Servlets | Request handling |
| MySQL | Database management |
| Apache Tomcat | Web application server |
| JDBC | Database connectivity |
| Eclipse IDE | Development environment |

## 📂 Project Structure

```text
Transport-Planner-Web-Application/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── Servlets and Java classes
│       │
│       └── webapp/
│           ├── JSP pages
│           ├── CSS files
│           ├── JavaScript files
│           └── Images
│
├── .classpath
├── .project
├── .gitignore
└── README.md
```

*Note: Update the folder structure if your actual project uses a different layout.*

## ⚙️ Prerequisites

Before running the project, install:

- Java JDK 17 or above
- Eclipse IDE
- Apache Tomcat
- MySQL Server
- MySQL JDBC Driver

## 💻 Installation and Setup

**1. Clone the repository**

```bash
git clone https://github.com/PedduriShalini/Transport-Planner-Web-Application.git
```

**2. Open the project**

- Open Eclipse IDE.
- Select File → Import → Existing Projects into Workspace.
- Choose the cloned project directory.

**3. Configure the database**

- Start MySQL Server.
- Create the required database.
- Create the necessary tables for users, admins, routes and bookings.
- Configure the JDBC connection in the project.

**4. Configure Apache Tomcat**

- Add Apache Tomcat to Eclipse.
- Configure the project with the Tomcat server.
- Start the server.

**5. Run the application**

Right-click the project and select:

`Run As → Run on Server`

Open the application in your browser using the local Tomcat URL.

## 🗄️ Database

The application uses MySQL to manage:

- User information
- Admin information
- Transport routes
- Booking details

## 🎯 Project Objective

The main objective of this project is to provide a simple and user-friendly platform for transport route management and ticket booking while demonstrating Java web development, database connectivity and server-side programming.

## 🔮 Future Enhancements

- Online payment integration
- Live transport tracking
- Advanced route search and filtering
- Booking history and cancellation
- Improved responsive user interface

## 👩‍💻 Author

**Shalini Pedduri**

- GitHub: https://github.com/PedduriShalini

---

⭐ If you find this project useful, consider giving the repository a star!
