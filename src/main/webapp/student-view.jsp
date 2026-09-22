<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">

        <title>Student Profile | Student Portal</title>

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

            :root {
                --primary: #6f42c1;
                --primary-dark: #4b2a83;
                --secondary: #8b5cf6;
                --accent: #c084fc;

                --background: #f7f5fc;
                --surface: #ffffff;

                --text-dark: #25213a;
                --text-muted: #77738a;

                --border: #ebe7f4;
            }

            * {
                box-sizing: border-box;
            }

            body {
                margin: 0;

                background:
                    radial-gradient(
                    circle at top left,
                    rgba(139, 92, 246, 0.10),
                    transparent 30%
                    ),
                    radial-gradient(
                    circle at bottom right,
                    rgba(192, 132, 252, 0.10),
                    transparent 30%
                    ),
                    var(--background);

                font-family:
                    "Segoe UI",
                    Tahoma,
                    Geneva,
                    Verdana,
                    sans-serif;

                color: var(--text-dark);
            }


            /* =====================================================
               NAVBAR
            ===================================================== */

            .portal-navbar {
                background:
                    linear-gradient(
                    135deg,
                    #24133f,
                    #4b2a83,
                    #6f42c1
                    );

                box-shadow:
                    0 5px 20px rgba(54, 31, 92, 0.20);
            }

            .portal-brand {
                font-weight: 700;
                letter-spacing: 0.3px;
            }


            /* =====================================================
               PAGE
            ===================================================== */

            .page-wrapper {
                min-height: calc(100vh - 72px);
                padding: 45px 15px;
            }


            /* =====================================================
               PROFILE CARD
            ===================================================== */

            .profile-card {
                border: none;
                border-radius: 24px;
                overflow: hidden;

                background: var(--surface);

                box-shadow:
                    0 20px 60px rgba(52, 31, 85, 0.10);

                transition:
                    transform 0.3s ease,
                    box-shadow 0.3s ease;
            }

            .profile-card:hover {
                transform: translateY(-3px);

                box-shadow:
                    0 25px 70px rgba(52, 31, 85, 0.14);
            }


            /* =====================================================
               PROFILE HERO
            ===================================================== */

            .profile-hero {
                position: relative;

                padding: 45px 40px;

                background:
                    linear-gradient(
                    135deg,
                    #29154a,
                    #4b2a83 50%,
                    #7c4dce
                    );

                color: white;

                overflow: hidden;
            }

            .profile-hero::before {
                content: "";

                position: absolute;

                width: 260px;
                height: 260px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.07);

                top: -120px;
                right: -80px;
            }

            .profile-hero::after {
                content: "";

                position: absolute;

                width: 180px;
                height: 180px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.05);

                bottom: -90px;
                left: 35%;
            }


            /* =====================================================
               AVATAR
            ===================================================== */

            .profile-avatar {
                position: relative;
                z-index: 2;

                width: 105px;
                height: 105px;

                border-radius: 50%;

                display: flex;
                align-items: center;
                justify-content: center;

                background:
                    linear-gradient(
                    135deg,
                    #ffffff,
                    #ede5ff
                    );

                color: var(--primary);

                font-size: 42px;
                font-weight: 800;

                border: 5px solid rgba(255, 255, 255, 0.25);

                box-shadow:
                    0 12px 30px rgba(0, 0, 0, 0.20);
            }


            /* =====================================================
               PROFILE HEADER TEXT
            ===================================================== */

            .profile-name {
                position: relative;
                z-index: 2;

                font-size: 2rem;
                font-weight: 800;

                margin-bottom: 5px;
            }

            .profile-id {
                position: relative;
                z-index: 2;

                color: rgba(255, 255, 255, 0.75);

                font-size: 0.95rem;
            }


            /* =====================================================
               STATUS
            ===================================================== */

            .profile-status {
                position: relative;
                z-index: 2;

                display: inline-flex;

                align-items: center;

                gap: 7px;

                padding: 8px 14px;

                border-radius: 50px;

                font-size: 0.80rem;
                font-weight: 700;

                backdrop-filter: blur(10px);
            }

            .status-active {
                background: rgba(25, 135, 84, 0.18);
                border: 1px solid rgba(133, 255, 192, 0.35);
                color: #b8ffd9;
            }

            .status-inactive {
                background: rgba(220, 53, 69, 0.18);
                border: 1px solid rgba(255, 150, 160, 0.30);
                color: #ffd0d5;
            }


            /* =====================================================
               BODY
            ===================================================== */

            .profile-body {
                padding: 38px;
            }


            /* =====================================================
               SECTION
            ===================================================== */

            .section-heading {
                display: flex;

                align-items: center;

                gap: 12px;

                margin-bottom: 20px;
            }

            .section-icon {
                width: 42px;
                height: 42px;

                display: flex;
                align-items: center;
                justify-content: center;

                border-radius: 12px;

                background:
                    #f0eaff;

                color:
                    var(--primary);

                font-size: 19px;
            }

            .section-heading h5 {
                margin: 0;

                font-weight: 750;
            }

            .section-heading p {
                margin: 2px 0 0;

                color: var(--text-muted);

                font-size: 0.82rem;
            }


            /* =====================================================
               INFORMATION BOX
            ===================================================== */

            .info-box {
                height: 100%;

                padding: 20px;

                border-radius: 15px;

                background:
                    linear-gradient(
                    135deg,
                    #faf9fd,
                    #f5f1fc
                    );

                border: 1px solid var(--border);

                transition:
                    transform 0.25s ease,
                    border-color 0.25s ease;
            }

            .info-box:hover {
                transform: translateY(-3px);

                border-color:
                    rgba(111, 66, 193, 0.25);
            }


            .info-label {
                display: block;

                margin-bottom: 7px;

                color: var(--text-muted);

                font-size: 0.75rem;

                text-transform: uppercase;

                letter-spacing: 0.6px;

                font-weight: 700;
            }

            .info-value {
                color: var(--text-dark);

                font-size: 0.98rem;

                font-weight: 600;

                word-break: break-word;
            }

            .info-value i {
                color: var(--primary);
            }


            /* =====================================================
               GENDER
            ===================================================== */

            .gender-badge {
                display: inline-flex;

                align-items: center;

                gap: 6px;

                padding: 7px 12px;

                border-radius: 9px;

                background: #eee8ff;

                color: var(--primary);

                font-size: 0.80rem;

                font-weight: 700;
            }


            /* =====================================================
               DESCRIPTION
            ===================================================== */

            .description-box {
                padding: 22px;

                border-radius: 15px;

                background:
                    #faf9fd;

                border:
                    1px solid var(--border);

                color: #625d70;

                line-height: 1.7;
            }


            /* =====================================================
               ACTIONS
            ===================================================== */

            .profile-actions {
                margin-top: 35px;

                padding-top: 25px;

                border-top:
                    1px solid var(--border);
            }

            .btn-custom {
                border-radius: 11px;

                padding: 10px 20px;

                font-weight: 650;

                transition:
                    all 0.25s ease;
            }

            .btn-custom:hover {
                transform: translateY(-2px);
            }

            .btn-edit {
                background:
                    linear-gradient(
                    135deg,
                    #6f42c1,
                    #8b5cf6
                    );

                border: none;

                color: white;

                box-shadow:
                    0 8px 20px rgba(111, 66, 193, 0.20);
            }

            .btn-edit:hover {
                color: white;

                box-shadow:
                    0 12px 25px rgba(111, 66, 193, 0.30);
            }


            /* =====================================================
               FOOTER
            ===================================================== */

            .footer {
                color: var(--text-muted);

                font-size: 0.85rem;

                padding: 25px 0;
            }


            /* =====================================================
               RESPONSIVE
            ===================================================== */

            @media (max-width: 768px) {

                .profile-hero {
                    padding: 35px 25px;
                }

                .profile-body {
                    padding: 25px 20px;
                }

                .profile-name {
                    font-size: 1.55rem;
                }

                .profile-avatar {
                    width: 85px;
                    height: 85px;

                    font-size: 34px;
                }

            }

        </style>

    </head>


    <body>


        <!-- =========================================================
             NAVBAR
        ========================================================= -->

        <nav class="navbar navbar-expand-lg navbar-dark portal-navbar">

            <div class="container">

                <a class="navbar-brand portal-brand"
                   href="${pageContext.request.contextPath}/">

                    <i class="bi bi-mortarboard-fill me-2"></i>

                    Student Portal

                </a>


                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarContent">

                    <span class="navbar-toggler-icon"></span>

                </button>


                <div class="collapse navbar-collapse"
                     id="navbarContent">

                    <ul class="navbar-nav ms-auto">

                        <li class="nav-item">

                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/StudentServlet">

                                <i class="bi bi-people me-1"></i>

                                Students

                            </a>

                        </li>

                    </ul>

                </div>

            </div>

        </nav>


        <!-- =========================================================
             MAIN
        ========================================================= -->

        <main class="page-wrapper">

            <div class="container">

                <div class="row justify-content-center">

                    <div class="col-12 col-xl-10">


                        <!-- =================================================
                             PROFILE CARD
                        ================================================== -->

                        <div class="card profile-card">


                            <!-- ===============================
                                 PROFILE HERO
                            ================================ -->

                            <div class="profile-hero">

                                <div class="row align-items-center g-4">


                                    <!-- Avatar -->

                                    <div class="col-auto">

                                        <div class="profile-avatar">

                                            ${student.name.substring(0,1).toUpperCase()}

                                        </div>

                                    </div>


                                    <!-- Name -->

                                    <div class="col">

                                        <div class="profile-name">

                                            ${student.name}

                                        </div>

                                        <div class="profile-id mb-3">

                                            <i class="bi bi-person-badge me-1"></i>

                                            Student ID #${student.id}

                                        </div>


                                        <!-- Status -->

                                        <c:choose>

                                            <c:when test="${student.active}">

                                                <span class="profile-status status-active">

                                                    <i class="bi bi-check-circle-fill"></i>

                                                    Active Student

                                                </span>

                                            </c:when>


                                            <c:otherwise>

                                                <span class="profile-status status-inactive">

                                                    <i class="bi bi-x-circle-fill"></i>

                                                    Inactive Student

                                                </span>

                                            </c:otherwise>

                                        </c:choose>

                                    </div>

                                </div>

                            </div>


                            <!-- ===============================
                                 PROFILE BODY
                            ================================ -->

                            <div class="profile-body">


                                <!-- =========================================
                                     PERSONAL INFORMATION
                                ========================================== -->

                                <div class="section-heading">

                                    <div class="section-icon">

                                        <i class="bi bi-person-vcard-fill"></i>

                                    </div>

                                    <div>

                                        <h5>Personal Information</h5>

                                        <p>Basic information about the student</p>

                                    </div>

                                </div>


                                <div class="row g-3 mb-4">


                                    <!-- Email -->

                                    <div class="col-md-6">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Email Address

                                            </span>

                                            <div class="info-value">

                                                <i class="bi bi-envelope me-2"></i>

                                                ${student.email}

                                            </div>

                                        </div>

                                    </div>


                                    <!-- Age -->

                                    <div class="col-md-3">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Age

                                            </span>

                                            <div class="info-value">

                                                <i class="bi bi-calendar3 me-2"></i>

                                                ${student.age} Years

                                            </div>

                                        </div>

                                    </div>


                                    <!-- Gender -->

                                    <div class="col-md-3">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Gender

                                            </span>

                                            <div class="info-value">

                                                <span class="gender-badge">

                                                    <i class="bi bi-gender-ambiguous"></i>

                                                    ${student.gender}

                                                </span>

                                            </div>

                                        </div>

                                    </div>


                                    <!-- Date of Birth -->

                                    <div class="col-md-6">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Date of Birth

                                            </span>

                                            <div class="info-value">

                                                <i class="bi bi-calendar-event me-2"></i>

                                                ${student.dateOfBirth}

                                            </div>

                                        </div>

                                    </div>


                                    <!-- Salary -->

                                    <div class="col-md-6">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Salary

                                            </span>

                                            <div class="info-value">

                                                <i class="bi bi-cash-stack me-2"></i>

                                                ${student.salary}

                                            </div>

                                        </div>

                                    </div>

                                </div>


                                <!-- =========================================
                                     SYSTEM INFORMATION
                                ========================================== -->

                                <div class="section-heading mt-5">

                                    <div class="section-icon">

                                        <i class="bi bi-clock-history"></i>

                                    </div>

                                    <div>

                                        <h5>System Information</h5>

                                        <p>Registration and account information</p>

                                    </div>

                                </div>


                                <div class="row g-3 mb-4">


                                    <!-- Registration Time -->

                                    <div class="col-md-6">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Registration Date & Time

                                            </span>

                                            <div class="info-value">

                                                <i class="bi bi-calendar-check me-2"></i>

                                                ${student.registrationTime}

                                            </div>

                                        </div>

                                    </div>


                                    <!-- Student ID -->

                                    <div class="col-md-6">

                                        <div class="info-box">

                                            <span class="info-label">

                                                Student Record ID

                                            </span>

                                            <div class="info-value">

                                                <i class="bi bi-database me-2"></i>

                                                #${student.id}

                                            </div>

                                        </div>

                                    </div>

                                </div>


                                <!-- =========================================
                                     DESCRIPTION
                                ========================================== -->

                                <div class="section-heading mt-5">

                                    <div class="section-icon">

                                        <i class="bi bi-card-text"></i>

                                    </div>

                                    <div>

                                        <h5>Additional Information</h5>

                                        <p>Notes and description about the student</p>

                                    </div>

                                </div>


                                <c:choose>

                                    <c:when test="${not empty student.description}">

                                        <div class="description-box">

                                            <i class="bi bi-quote me-2 text-secondary"></i>

                                            ${student.description}

                                        </div>

                                    </c:when>


                                    <c:otherwise>

                                        <div class="description-box text-muted">

                                            <i class="bi bi-info-circle me-2"></i>

                                            No additional information has been provided.

                                        </div>

                                    </c:otherwise>

                                </c:choose>


                                <!-- =========================================
                                     ACTIONS
                                ========================================== -->

                                <div class="profile-actions">

                                    <div class="d-flex
                                         flex-column flex-sm-row
                                         justify-content-between
                                         gap-2">


                                        <!-- Back -->

                                        <a
                                            href="${pageContext.request.contextPath}/StudentServlet"
                                            class="btn btn-outline-secondary btn-custom">

                                            <i class="bi bi-arrow-left me-1"></i>

                                            Back to Students

                                        </a>


                                        <div class="d-flex gap-2">


                                            <!-- Edit -->

                                            <a
                                                href="${pageContext.request.contextPath}/StudentServlet?action=edit&id=${student.id}"
                                                class="btn btn-edit btn-custom">

                                                <i class="bi bi-pencil-fill me-1"></i>

                                                Edit Student

                                            </a>


                                            <!-- Delete -->

                                            <a
                                                href="${pageContext.request.contextPath}/StudentServlet?action=delete&id=${student.id}"
                                                class="btn btn-outline-danger btn-custom"
                                                onclick="return confirm('Are you sure you want to delete this student?')">

                                                <i class="bi bi-trash-fill me-1"></i>

                                                Delete

                                            </a>

                                        </div>

                                    </div>

                                </div>


                            </div>

                        </div>


                        <!-- =========================================
                             FOOTER
                        ========================================== -->

                        <div class="text-center footer">

                            <i class="bi bi-shield-check me-1"></i>

                            Student Management System

                            <span class="mx-2">•</span>

                            Student Profile

                            <span class="mx-2">•</span>

                            &copy; 2026

                        </div>


                    </div>

                </div>

            </div>

        </main>


        <!-- Bootstrap JS -->

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
        </script>


    </body>

</html>