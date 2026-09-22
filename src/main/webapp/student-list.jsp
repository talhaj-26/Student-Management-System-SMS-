<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">

        <title>Student Portal | Students</title>


        <!-- Bootstrap -->

        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
            rel="stylesheet">


        <!-- Bootstrap Icons -->

        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


        <style>

            /* =====================================================
               GLOBAL
            ===================================================== */

            * {
                box-sizing: border-box;
            }

            body {

                margin: 0;

                min-height: 100vh;

                font-family:
                    "Segoe UI",
                    Tahoma,
                    Geneva,
                    Verdana,
                    sans-serif;

                background:
                    linear-gradient(
                    135deg,
                    #eef4ff 0%,
                    #f8f9fa 45%,
                    #edf4ff 100%
                    );

                color: #212529;
            }


            /* =====================================================
               BACKGROUND DECORATION
            ===================================================== */

            .background-shape {

                position: fixed;

                border-radius: 50%;

                z-index: -1;

                pointer-events: none;
            }

            .shape-one {

                width: 300px;

                height: 300px;

                top: -150px;

                left: -100px;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd,
                    #6f42c1
                    );

                opacity: 0.13;
            }

            .shape-two {

                width: 280px;

                height: 280px;

                right: -120px;

                bottom: -130px;

                background:
                    linear-gradient(
                    135deg,
                    #20c997,
                    #0d6efd
                    );

                opacity: 0.12;
            }


            /* =====================================================
               NAVBAR
            ===================================================== */

            .portal-navbar {

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd,
                    #084298
                    );

                box-shadow:
                    0 5px 20px
                    rgba(13, 110, 253, 0.18);
            }

            .portal-brand {

                font-size: 20px;

                font-weight: 700;

                letter-spacing: 0.2px;
            }

            .portal-navbar .nav-link {

                color:
                    rgba(255, 255, 255, 0.82);

                font-weight: 500;

                margin-left: 5px;

                padding:
                    8px 13px !important;

                border-radius: 8px;

                transition:
                    all 0.2s ease;
            }

            .portal-navbar .nav-link:hover {

                color: white;

                background:
                    rgba(255, 255, 255, 0.12);
            }

            .portal-navbar .nav-link.active {

                color: white;

                background:
                    rgba(255, 255, 255, 0.16);
            }


            /* =====================================================
               MAIN
            ===================================================== */

            .page-wrapper {

                padding:
                    38px 0 25px;
            }


            /* =====================================================
               PAGE HERO
            ===================================================== */

            .page-hero {

                position: relative;

                overflow: hidden;

                padding:
                    32px 35px;

                margin-bottom: 25px;

                border-radius: 22px;

                color: white;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd 0%,
                    #084298 65%,
                    #062c68 100%
                    );

                box-shadow:
                    0 15px 40px
                    rgba(13, 110, 253, 0.18);
            }

            .page-hero::before {

                content: "";

                position: absolute;

                width: 260px;

                height: 260px;

                right: -100px;

                top: -150px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.08);
            }

            .page-hero::after {

                content: "";

                position: absolute;

                width: 160px;

                height: 160px;

                left: 40%;

                bottom: -120px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.05);
            }

            .hero-content {

                position: relative;

                z-index: 2;
            }

            .hero-icon {

                width: 52px;

                height: 52px;

                display: flex;

                align-items: center;

                justify-content: center;

                margin-bottom: 14px;

                border-radius: 14px;

                background:
                    rgba(255, 255, 255, 0.13);

                border:
                    1px solid
                    rgba(255, 255, 255, 0.20);

                font-size: 23px;
            }

            .page-hero h2 {

                margin-bottom: 7px;

                font-size: 28px;

                font-weight: 750;
            }

            .page-hero p {

                margin: 0;

                color:
                    rgba(255, 255, 255, 0.80);

                font-size: 14px;
            }

            .add-student-btn {

                border: none;

                padding:
                    11px 18px;

                border-radius: 10px;

                font-weight: 600;

                transition:
                    all 0.25s ease;
            }

            .add-student-btn:hover {

                transform:
                    translateY(-2px);

                box-shadow:
                    0 8px 20px
                    rgba(0, 0, 0, 0.15);
            }


            /* =====================================================
               STATISTICS
            ===================================================== */

            .stat-card {

                border: 1px solid
                    rgba(255, 255, 255, 0.8);

                border-radius: 16px;

                background:
                    rgba(255, 255, 255, 0.82);

                backdrop-filter: blur(12px);

                box-shadow:
                    0 7px 25px
                    rgba(0, 0, 0, 0.055);

                transition:
                    all 0.25s ease;
            }

            .stat-card:hover {

                transform:
                    translateY(-3px);

                box-shadow:
                    0 12px 30px
                    rgba(0, 0, 0, 0.08);
            }

            .stat-icon {

                width: 48px;

                height: 48px;

                display: flex;

                align-items: center;

                justify-content: center;

                border-radius: 13px;

                background-color: #e8f1ff;

                color: #0d6efd;

                font-size: 21px;
            }

            .stat-label {

                color: #6c757d;

                font-size: 12px;

                font-weight: 600;

                text-transform: uppercase;

                letter-spacing: 0.4px;
            }

            .stat-value {

                margin-top: 2px;

                color: #212529;

                font-size: 24px;

                font-weight: 750;
            }


            /* =====================================================
               TABLE CARD
            ===================================================== */

            .table-card {

                overflow: hidden;

                border: 1px solid
                    rgba(255, 255, 255, 0.85);

                border-radius: 20px;

                background:
                    rgba(255, 255, 255, 0.92);

                backdrop-filter: blur(12px);

                box-shadow:
                    0 10px 35px
                    rgba(0, 0, 0, 0.07);
            }


            /* =====================================================
               TABLE HEADER
            ===================================================== */

            .table-card-header {

                padding:
                    21px 25px;

                border-bottom:
                    1px solid #edf0f2;

                background:
                    rgba(255, 255, 255, 0.90);
            }

            .table-title {

                margin: 0;

                font-size: 18px;

                font-weight: 700;
            }

            .table-subtitle {

                margin-top: 3px;

                color: #8a939b;

                font-size: 12px;
            }

            .records-badge {

                padding:
                    7px 11px;

                border-radius: 8px;

                background-color: #e8f1ff;

                color: #0d6efd;

                font-size: 11px;

                font-weight: 700;
            }


            /* =====================================================
               TABLE
            ===================================================== */

            .table-wrapper {

                overflow-x: auto;
            }

            .student-table {

                min-width: 1250px;

                margin-bottom: 0;
            }

            .student-table thead {

                background-color: #f8f9fb;
            }

            .student-table th {

                padding:
                    15px 14px;

                color: #7a838c;

                font-size: 10px;

                font-weight: 750;

                text-transform: uppercase;

                letter-spacing: 0.65px;

                white-space: nowrap;

                border-bottom:
                    1px solid #e9ecef;
            }

            .student-table td {

                padding:
                    16px 14px;

                vertical-align: middle;

                color: #495057;

                font-size: 13px;

                border-bottom:
                    1px solid #edf0f2;
            }

            .student-table tbody tr {

                transition:
                    all 0.2s ease;
            }

            .student-table tbody tr:hover {

                background-color:
                    #f7faff;
            }

            .student-table tbody tr:last-child td {

                border-bottom: none;
            }


            /* =====================================================
               STUDENT
            ===================================================== */

            .student-profile {

                display: flex;

                align-items: center;

                gap: 11px;

                min-width: 190px;
            }

            .student-avatar {

                width: 40px;

                height: 40px;

                flex-shrink: 0;

                display: flex;

                align-items: center;

                justify-content: center;

                border-radius: 50%;

                color: white;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd,
                    #6f42c1
                    );

                font-size: 13px;

                font-weight: 750;

                box-shadow:
                    0 5px 12px
                    rgba(13, 110, 253, 0.20);
            }

            .student-name {

                color: #212529;

                font-weight: 650;
            }

            .student-id {

                margin-top: 2px;

                color: #9aa1a8;

                font-size: 11px;
            }


            /* =====================================================
               EMAIL
            ===================================================== */

            .student-email {

                color: #495057;

                white-space: nowrap;
            }


            /* =====================================================
               SALARY
            ===================================================== */

            .salary {

                color: #198754;

                font-weight: 650;

                white-space: nowrap;
            }


            /* =====================================================
               GENDER
            ===================================================== */

            .gender-badge {

                display: inline-block;

                padding:
                    5px 9px;

                border-radius: 7px;

                background-color: #f1f3f5;

                color: #495057;

                font-size: 10px;

                font-weight: 700;
            }


            /* =====================================================
               STATUS
            ===================================================== */

            .status-badge {

                display: inline-flex;

                align-items: center;

                gap: 5px;

                padding:
                    6px 10px;

                border-radius: 20px;

                font-size: 10px;

                font-weight: 750;
            }

            .status-active {

                color: #198754;

                background-color: #e8f7f2;
            }

            .status-inactive {

                color: #dc3545;

                background-color: #fdeaea;
            }


            /* =====================================================
               DESCRIPTION
            ===================================================== */

            .description {

                max-width: 180px;

                overflow: hidden;

                text-overflow: ellipsis;

                white-space: nowrap;

                color: #7b858e;
            }


            /* =====================================================
               ACTION BUTTONS
            ===================================================== */

            .actions {

                display: flex;

                gap: 6px;
            }

            .action-btn {

                width: 34px;

                height: 34px;

                display: flex;

                align-items: center;

                justify-content: center;

                border-radius: 9px;

                text-decoration: none;

                transition:
                    all 0.2s ease;
            }

            .action-btn:hover {

                transform:
                    translateY(-2px);
            }

            .view-btn {

                color: #0d6efd;

                background-color: #e8f1ff;
            }

            .view-btn:hover {

                color: white;

                background-color: #0d6efd;
            }

            .edit-btn {

                color: #d97706;

                background-color: #fff4dc;
            }

            .edit-btn:hover {

                color: white;

                background-color: #d97706;
            }

            .delete-btn {

                color: #dc3545;

                background-color: #fde8e8;
            }

            .delete-btn:hover {

                color: white;

                background-color: #dc3545;
            }


            /* =====================================================
               EMPTY STATE
            ===================================================== */

            .empty-state {

                padding:
                    85px 20px;

                text-align: center;
            }

            .empty-icon {

                width: 78px;

                height: 78px;

                margin:
                    0 auto 20px;

                display: flex;

                align-items: center;

                justify-content: center;

                border-radius: 50%;

                background-color: #f1f3f5;

                color: #adb5bd;

                font-size: 32px;
            }

            .empty-state h5 {

                margin-bottom: 8px;

                color: #343a40;

                font-weight: 700;
            }

            .empty-state p {

                max-width: 420px;

                margin:
                    0 auto 22px;

                color: #8a939b;

                font-size: 14px;
            }


            /* =====================================================
               FOOTER
            ===================================================== */

            .footer {

                padding:
                    24px 0;

                color: #9aa1a8;

                font-size: 12px;

                text-align: center;
            }


            /* =====================================================
               RESPONSIVE
            ===================================================== */

            @media (max-width: 768px) {

                .page-wrapper {

                    padding-top: 25px;
                }

                .page-hero {

                    padding:
                        27px 23px;

                    border-radius: 18px;
                }

                .page-hero h2 {

                    font-size: 23px;
                }

                .table-card {

                    border-radius: 16px;
                }

            }

        </style>

    </head>


    <body>


        <!-- =====================================================
             BACKGROUND
        ====================================================== -->

        <div class="background-shape shape-one"></div>

        <div class="background-shape shape-two"></div>


        <!-- =====================================================
             NAVBAR
        ====================================================== -->

        <nav class="navbar navbar-expand-lg navbar-dark portal-navbar">

            <div class="container">


                <!-- Brand -->

                <a
                    class="navbar-brand portal-brand"
                    href="${pageContext.request.contextPath}/">

                    <i class="bi bi-mortarboard-fill me-2"></i>

                    Student Portal

                </a>


                <!-- Mobile Button -->

                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarContent">

                    <span class="navbar-toggler-icon"></span>

                </button>


                <!-- Navigation -->

                <div
                    class="collapse navbar-collapse"
                    id="navbarContent">

                    <ul class="navbar-nav ms-auto">


                        <li class="nav-item">

                            <a
                                class="nav-link"
                                href="${pageContext.request.contextPath}/StudentServlet?action=new">

                                <i class="bi bi-person-plus me-1"></i>

                                Registration

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                class="nav-link active"
                                href="${pageContext.request.contextPath}/StudentServlet">

                                <i class="bi bi-people me-1"></i>

                                Students

                            </a>

                        </li>


                    </ul>

                </div>

            </div>

        </nav>


        <!-- =====================================================
             MAIN CONTENT
        ====================================================== -->

        <main class="page-wrapper">

            <div class="container-fluid">


                <!-- =================================================
                     HERO
                ================================================== -->

                <section class="page-hero">


                    <div
                        class="hero-content
                        d-flex
                        flex-column
                        flex-md-row
                        justify-content-between
                        align-items-md-center
                        gap-4">


                        <div>


                            <div class="hero-icon">

                                <i class="bi bi-people-fill"></i>

                            </div>


                            <h2>

                                Student Management

                            </h2>


                            <p>

                                View, manage and organize all
                                registered student information.

                            </p>

                        </div>


                        <div>


                            <a
                                href="${pageContext.request.contextPath}/StudentServlet?action=new"
                                class="btn btn-light add-student-btn">

                                <i class="bi bi-person-plus-fill me-1"></i>

                                Add Student

                            </a>

                        </div>


                    </div>

                </section>


                <!-- =================================================
                     STATISTICS
                ================================================== -->

                <div class="row g-3 mb-4">


                    <!-- Total Students -->

                    <div class="col-12 col-md-6 col-lg-4">

                        <div class="card stat-card h-100">

                            <div class="card-body p-4">

                                <div
                                    class="d-flex
                                    align-items-center
                                    gap-3">


                                    <div class="stat-icon">

                                        <i class="bi bi-people-fill"></i>

                                    </div>


                                    <div>

                                        <div class="stat-label">

                                            Total Students

                                        </div>

                                        <div class="stat-value">

                                            ${students.size()}

                                        </div>

                                    </div>


                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- Records -->

                    <div class="col-12 col-md-6 col-lg-4">

                        <div class="card stat-card h-100">

                            <div class="card-body p-4">

                                <div
                                    class="d-flex
                                    align-items-center
                                    gap-3">


                                    <div
                                        class="stat-icon"
                                        style="
                                        background-color:#e8f7f2;
                                        color:#198754;
                                        ">

                                        <i class="bi bi-database-check"></i>

                                    </div>


                                    <div>

                                        <div class="stat-label">

                                            Database Records

                                        </div>

                                        <div class="stat-value">

                                            ${students.size()}

                                        </div>

                                    </div>


                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- System -->

                    <div class="col-12 col-lg-4">

                        <div class="card stat-card h-100">

                            <div class="card-body p-4">

                                <div
                                    class="d-flex
                                    align-items-center
                                    gap-3">


                                    <div
                                        class="stat-icon"
                                        style="
                                        background-color:#fff4dc;
                                        color:#d97706;
                                        ">

                                        <i class="bi bi-shield-check"></i>

                                    </div>


                                    <div>

                                        <div class="stat-label">

                                            System Status

                                        </div>

                                        <div class="stat-value">

                                            Active

                                        </div>

                                    </div>


                                </div>

                            </div>

                        </div>

                    </div>


                </div>


                <!-- =================================================
                     TABLE
                ================================================== -->

                <section class="card table-card">


                    <!-- Table Header -->

                    <div class="table-card-header">


                        <div
                            class="d-flex
                            justify-content-between
                            align-items-center
                            gap-3">


                            <div>

                                <h5 class="table-title">

                                    <i
                                        class="bi bi-table
                                        me-2
                                        text-primary">
                                    </i>

                                    Student List

                                </h5>


                                <div class="table-subtitle">

                                    All registered students

                                </div>

                            </div>


                            <span class="records-badge">

                                ${students.size()} Records

                            </span>


                        </div>

                    </div>


                    <!-- Table Wrapper -->

                    <div class="table-wrapper">


                        <c:choose>

                            <c:when test="${not empty students}">

                                <table class="table student-table">

                                    <thead>

                                        <tr>

                                            <th>ID</th>
                                            <th>Student</th>
                                            <th>Email</th>
                                            <th>Age</th>
                                            <th>Salary</th>
                                            <th>Date of Birth</th>
                                            <th>Registration</th>
                                            <th>Gender</th>
                                            <th>Status</th>
                                            <th>Description</th>
                                            <th>Actions</th>

                                        </tr>

                                    </thead>

                                    <tbody>

                                        <c:forEach
                                            var="student"
                                            items="${students}">

                                            <tr>

                                                <td>
                                                    <span class="student-id">
                                                        #${student.id}
                                                    </span>
                                                </td>

                                                <td>

                                                    <div class="student-profile">

                                                        <div class="student-avatar">
                                                            ${student.name.substring(0,1)}
                                                        </div>

                                                        <div>

                                                            <div class="student-name">
                                                                <c:out value="${student.name}"/>
                                                            </div>

                                                            <div class="student-id">
                                                                Student
                                                            </div>

                                                        </div>

                                                    </div>

                                                </td>

                                                <td>

                                                    <span class="student-email">

                                                        <i class="bi bi-envelope me-1 text-muted"></i>

                                                        <c:out value="${student.email}"/>

                                                    </span>

                                                </td>

                                                <td>
                                                    ${student.age}
                                                </td>

                                                <td>

                                                    <span class="salary">
                                                        ${student.salary}
                                                    </span>

                                                </td>

                                                <td>

                                                    <i class="bi bi-calendar3 me-1 text-muted"></i>

                                                    ${student.dateOfBirth}

                                                </td>

                                                <td>

                                                    <small>
                                                        ${student.registrationTime}
                                                    </small>

                                                </td>

                                                <td>

                                                    <span class="gender-badge">
                                                        <c:out value="${student.gender}"/>
                                                    </span>

                                                </td>

                                                <td>

                                                    <c:choose>

                                                        <c:when test="${student.active}">

                                                            <span class="status-badge status-active">

                                                                <i class="bi bi-check-circle-fill"></i>

                                                                Active

                                                            </span>

                                                        </c:when>

                                                        <c:otherwise>

                                                            <span class="status-badge status-inactive">

                                                                <i class="bi bi-x-circle-fill"></i>

                                                                Inactive

                                                            </span>

                                                        </c:otherwise>

                                                    </c:choose>

                                                </td>

                                                <td>

                                                    <div
                                                        class="description"
                                                        title="${student.description}">

                                                        <c:out value="${student.description}"/>

                                                    </div>

                                                </td>

                                                <td>

                                                    <div class="actions">

                                                        <a
                                                            href="${pageContext.request.contextPath}/StudentServlet?action=view&id=${student.id}"
                                                            class="action-btn view-btn"
                                                            title="View Student">

                                                            <i class="bi bi-eye-fill"></i>

                                                        </a>

                                                        <a
                                                            href="${pageContext.request.contextPath}/StudentServlet?action=edit&id=${student.id}"
                                                            class="action-btn edit-btn"
                                                            title="Edit Student">

                                                            <i class="bi bi-pencil-fill"></i>

                                                        </a>

                                                        <a
                                                            href="${pageContext.request.contextPath}/StudentServlet?action=delete&id=${student.id}"
                                                            class="action-btn delete-btn"
                                                            title="Delete Student"
                                                            onclick="return confirm('Are you sure you want to delete this student?');">

                                                            <i class="bi bi-trash-fill"></i>

                                                        </a>

                                                    </div>

                                                </td>

                                            </tr>

                                        </c:forEach>

                                    </tbody>

                                </table>

                            </c:when>

                            <c:otherwise>

                                <div class="empty-state">

                                    <div class="empty-icon">

                                        <i class="bi bi-people"></i>

                                    </div>

                                    <h5>
                                        No Students Found
                                    </h5>

                                    <p>
                                        There are currently no students
                                        registered in the system.
                                    </p>

                                    <a
                                        href="${pageContext.request.contextPath}/StudentServlet?action=new"
                                        class="btn btn-primary">

                                        <i class="bi bi-person-plus-fill me-1"></i>

                                        Register First Student

                                    </a>

                                </div>

                            </c:otherwise>

                        </c:choose>

                    </div>


                </section>


                <!-- =================================================
                     FOOTER
                ================================================== -->

                <footer class="footer">

                    <i
                        class="bi bi-shield-check
                        text-success
                        me-1">
                    </i>

                    Student Management System

                    <span class="mx-1">•</span>

                    Secure Student Portal

                    <span class="mx-1">•</span>

                    &copy; 2026

                </footer>


            </div>

        </main>


        <!-- =====================================================
             BOOTSTRAP JS
        ====================================================== -->

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
        </script>


    </body>

</html>