# Student Management System (SMS)

A web-based **Student Management System** developed using **Java, Jakarta EE, JSP, PostgreSQL, and Maven**. The project was developed in **NetBeans IDE** and deployed using **Apache Tomcat**.

The application follows a layered structure with separate model, repository, service, servlet, resource, and utility components to keep the application organized and maintainable.

---

## 📌 Project Overview

The **Student Management System (SMS)** is a Java-based web application designed to manage student-related information through a structured web application architecture.

The project demonstrates practical implementation of:

* Java Web Application development
* Jakarta EE
* Servlet-based request handling
* JSP and JSTL
* PostgreSQL database connectivity
* Maven project management
* Layered application architecture
* Database-driven application development

---

## 🚀 Features

* Student information management
* Web-based student management interface
* Servlet-based request processing
* Service layer for application logic
* Repository layer for data access
* PostgreSQL database integration
* JSP-based web pages
* JSTL support
* Maven-based build configuration
* WAR-based web application packaging

---

## 🛠️ Technologies Used

| Technology             | Version / Details             |
| ---------------------- | ----------------------------- |
| Java                   | JDK 17                        |
| Jakarta EE             | 10.0.0                        |
| Apache Tomcat          | Application Server            |
| PostgreSQL             | Database                      |
| PostgreSQL JDBC Driver | 42.7.7                        |
| JSP                    | Jakarta Server Pages          |
| JSTL                   | 3.0.x                         |
| Maven                  | Build & Dependency Management |
| IDE                    | NetBeans                      |
| Packaging              | WAR                           |

---

## 🏗️ Project Architecture

The project is organized into separate layers/components:

```text
SMS
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.sms
│   │   │       │
│   │   │       ├── model
│   │   │       │   └── Student.java
│   │   │       │
│   │   │       ├── repository
│   │   │       │   └── StudentRepository.java
│   │   │       │
│   │   │       ├── resources
│   │   │       │   └── JakartaEE10Rersource.java
│   │   │       │
│   │   │       ├── service
│   │   │       │   └── StudentService.java
│   │   │       │
│   │   │       ├── servlet
│   │   │       │   └── StudentServlet.java
│   │   │       │
│   │   │       └── util
│   │   │           └── DBConnection.java
│   │   │
│   │   └── webapp
│   │
│   └── ...
│
├── pom.xml
└── README.md
```

### Layer Responsibilities

#### Model

**`Student.java`**

Represents the student data model used by the application.

#### Repository

**`StudentRepository.java`**

Responsible for the data-access layer and communication with the database.

#### Service

**`StudentService.java`**

Handles the application's service/business logic between the servlet and repository layers.

#### Servlet

**`StudentServlet.java`**

Handles HTTP requests and responses between the web interface and application logic.

#### Resources

**`JakartaEE10Rersource.java`**

Contains the Jakarta EE resource configuration used by the application.

#### Utility

**`DBConnection.java`**

Provides database connection functionality for PostgreSQL.

---

## 🗄️ Database

The application uses **PostgreSQL** as its relational database.

### Database Driver

```xml
<dependency>
    <groupId>org.postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <version>42.7.7</version>
</dependency>
```

Before running the application, configure the PostgreSQL database connection according to the connection settings used in `DBConnection.java`.

> **Note:** Database credentials should not be committed to a public GitHub repository. Use your own local database configuration when running the project.

---

## 📦 Maven Configuration

The project uses Maven for dependency management and build configuration.

The application is packaged as a **WAR (Web Application Archive)**:

```xml
<packaging>war</packaging>
```

Java source and target compatibility:

```xml
<maven.compiler.source>17</maven.compiler.source>
<maven.compiler.target>17</maven.compiler.target>
```

Jakarta EE version:

```xml
<jakartaee>10.0.0</jakartaee>
```

---

## 📋 Prerequisites

Before running the project, install/configure:

1. **JDK 17**
2. **Apache NetBeans**
3. **Apache Tomcat**
4. **PostgreSQL**
5. **Maven** (or use the Maven configuration provided by NetBeans)

---

## ▶️ How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/talhaj-26/Student-Management-System-SMS-.git
```

### 2. Open the Project

Open the project in **Apache NetBeans**.

Because the project is Maven-based, NetBeans should automatically recognize the project configuration from `pom.xml`.

### 3. Configure PostgreSQL

Create/configure the required PostgreSQL database and update the database connection settings in:

```text
DBConnection.java
```

### 4. Configure Apache Tomcat

Add/configure **Apache Tomcat** as the application server in NetBeans.

### 5. Run the Application

Run the project from NetBeans.

The application will be packaged/deployed as a WAR application on Apache Tomcat.

---

## 🔧 Build with Maven

To build the project from the terminal:

```bash
mvn clean package
```

The generated WAR file will be available inside:

```text
target/
```

The `target/` directory is excluded from Git through `.gitignore`.

---

## 📂 Main Project Files

| File                        | Purpose                                    |
| --------------------------- | ------------------------------------------ |
| `Student.java`              | Student model                              |
| `StudentRepository.java`    | Database/data-access layer                 |
| `StudentService.java`       | Service/business logic                     |
| `StudentServlet.java`       | HTTP request handling                      |
| `JakartaEE10Rersource.java` | Jakarta EE resource configuration          |
| `DBConnection.java`         | PostgreSQL database connection             |
| `pom.xml`                   | Maven dependencies and build configuration |

---

## 🎯 Learning Objectives

This project was developed to gain practical experience with:

* Java 17
* Jakarta EE 10
* Java Servlet development
* JSP and JSTL
* Maven
* PostgreSQL
* JDBC/database connectivity
* Layered application architecture
* Web application deployment using Apache Tomcat
* NetBeans-based Java web development

---

## 🔮 Future Improvements

Possible future improvements include:

* User authentication and authorization
* Improved validation
* Search and filtering
* Pagination
* Improved UI/UX
* REST API integration
* Advanced error handling
* Enhanced security
* Deployment to a production environment

---

## 👨‍💻 Author

**Talha Jubayer**

GitHub: [@talhaj-26](https://github.com/talhaj-26)

---

## 📄 License

This project is intended for **educational and portfolio purposes**.
