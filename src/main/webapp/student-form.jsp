<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">

        <title>
            <c:choose>
                <c:when test="${not empty student}">
                    Student Portal | Edit Student
                </c:when>

                <c:otherwise>
                    Student Portal | Add Student
                </c:otherwise>
            </c:choose>
        </title>


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

                color: #212529;

                background:
                    linear-gradient(
                    135deg,
                    #eef4ff 0%,
                    #f8f9fa 45%,
                    #edf4ff 100%
                    );
            }


            /* =====================================================
               BACKGROUND SHAPES
            ===================================================== */

            .background-shape {

                position: fixed;

                border-radius: 50%;

                pointer-events: none;

                z-index: -1;
            }

            .shape-one {

                width: 330px;

                height: 330px;

                top: -170px;

                left: -120px;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd,
                    #6f42c1
                    );

                opacity: 0.12;
            }

            .shape-two {

                width: 300px;

                height: 300px;

                right: -130px;

                bottom: -150px;

                background:
                    linear-gradient(
                    135deg,
                    #20c997,
                    #0d6efd
                    );

                opacity: 0.10;
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

                padding:
                    8px 13px !important;

                margin-left: 5px;

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
               PAGE
            ===================================================== */

            .page-wrapper {

                padding:
                    38px 15px 25px;
            }


            /* =====================================================
               FORM CARD
            ===================================================== */

            .form-card {

                overflow: hidden;

                border: 1px solid
                    rgba(255, 255, 255, 0.85);

                border-radius: 22px;

                background:
                    rgba(255, 255, 255, 0.94);

                backdrop-filter: blur(12px);

                box-shadow:
                    0 15px 45px
                    rgba(0, 0, 0, 0.08);
            }


            /* =====================================================
               FORM HEADER
            ===================================================== */

            .form-header {

                position: relative;

                overflow: hidden;

                padding:
                    34px 38px;

                color: white;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd 0%,
                    #084298 65%,
                    #062c68 100%
                    );
            }

            .form-header::before {

                content: "";

                position: absolute;

                width: 280px;

                height: 280px;

                right: -110px;

                top: -170px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.07);
            }

            .form-header::after {

                content: "";

                position: absolute;

                width: 160px;

                height: 160px;

                right: 25%;

                bottom: -110px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.045);
            }

            .header-content {

                position: relative;

                z-index: 2;
            }

            .header-icon {

                width: 58px;

                height: 58px;

                display: flex;

                align-items: center;

                justify-content: center;

                flex-shrink: 0;

                border-radius: 15px;

                background:
                    rgba(255, 255, 255, 0.13);

                border:
                    1px solid
                    rgba(255, 255, 255, 0.18);

                font-size: 25px;
            }

            .form-header h2 {

                margin: 0 0 7px;

                font-size: 27px;

                font-weight: 750;
            }

            .form-header p {

                margin: 0;

                color:
                    rgba(255, 255, 255, 0.80);

                font-size: 14px;
            }

            .mode-badge {

                display: inline-flex;

                align-items: center;

                gap: 6px;

                margin-top: 14px;

                padding:
                    6px 11px;

                border-radius: 20px;

                background:
                    rgba(255, 255, 255, 0.12);

                border:
                    1px solid
                    rgba(255, 255, 255, 0.15);

                font-size: 11px;

                font-weight: 650;
            }


            /* =====================================================
               FORM BODY
            ===================================================== */

            .form-body {

                padding:
                    38px;
            }


            /* =====================================================
               SECTION
            ===================================================== */

            .section-block {

                margin-bottom: 38px;
            }

            .section-heading {

                display: flex;

                align-items: center;

                gap: 11px;

                margin-bottom: 23px;

                padding-bottom: 12px;

                border-bottom:
                    1px solid #e9ecef;
            }

            .section-icon {

                width: 36px;

                height: 36px;

                display: flex;

                align-items: center;

                justify-content: center;

                border-radius: 10px;

                background-color: #e8f1ff;

                color: #0d6efd;

                font-size: 16px;
            }

            .section-title {

                margin: 0;

                color: #212529;

                font-size: 16px;

                font-weight: 700;
            }

            .section-description {

                margin: 2px 0 0;

                color: #8a939b;

                font-size: 12px;
            }


            /* =====================================================
               FORM ELEMENTS
            ===================================================== */

            .form-label {

                margin-bottom: 8px;

                color: #343a40;

                font-size: 13px;

                font-weight: 650;
            }

            .required {

                color: #dc3545;
            }

            .input-group-text {

                min-width: 45px;

                justify-content: center;

                border-color: #dee2e6;

                background-color: #f8f9fb;

                color: #0d6efd;
            }

            .form-control,
            .form-select {

                min-height: 46px;

                border-color: #dee2e6;

                border-radius: 10px;

                font-size: 13px;

                transition:
                    all 0.2s ease;
            }

            .input-group .form-control {

                border-top-left-radius: 0;

                border-bottom-left-radius: 0;
            }

            .form-control:focus,
            .form-select:focus {

                border-color: #86b7fe;

                box-shadow:
                    0 0 0 0.20rem
                    rgba(13, 110, 253, 0.11);
            }

            textarea.form-control {

                min-height: 130px;

                resize: vertical;
            }

            .form-text {

                margin-top: 6px;

                color: #8a939b;

                font-size: 11px;
            }


            /* =====================================================
               STATUS CARD
            ===================================================== */

            .status-card {

                padding:
                    16px 18px;

                border:
                    1px solid #e1e5e9;

                border-radius: 12px;

                background:
                    linear-gradient(
                    135deg,
                    #f8faff,
                    #f8f9fa
                    );
            }

            .status-title {

                margin-bottom: 3px;

                color: #343a40;

                font-size: 13px;

                font-weight: 700;
            }

            .status-description {

                margin-bottom: 12px;

                color: #8a939b;

                font-size: 11px;
            }

            .form-switch .form-check-input {

                width: 2.5em;

                height: 1.35em;

                cursor: pointer;
            }

            .form-switch .form-check-input:checked {

                background-color: #198754;

                border-color: #198754;
            }

            .form-check-label {

                margin-left: 5px;

                color: #343a40;

                font-size: 13px;

                font-weight: 650;

                cursor: pointer;
            }


            /* =====================================================
               FORM ACTIONS
            ===================================================== */

            .form-actions {

                margin-top: 10px;

                padding-top: 25px;

                border-top:
                    1px solid #e9ecef;
            }

            .btn {

                min-height: 44px;

                padding:
                    9px 18px;

                border-radius: 10px;

                font-size: 13px;

                font-weight: 650;

                transition:
                    all 0.2s ease;
            }

            .btn-primary {

                box-shadow:
                    0 5px 14px
                    rgba(13, 110, 253, 0.16);
            }

            .btn-primary:hover {

                transform:
                    translateY(-2px);

                box-shadow:
                    0 8px 20px
                    rgba(13, 110, 253, 0.22);
            }

            .btn-outline-secondary:hover {

                transform:
                    translateY(-2px);
            }


            /* =====================================================
               FOOTER
            ===================================================== */

            .footer {

                padding:
                    22px 0;

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

                .form-header {

                    padding:
                        28px 23px;
                }

                .form-header h2 {

                    font-size: 23px;
                }

                .form-body {

                    padding:
                        25px 20px;
                }

                .header-icon {

                    width: 50px;

                    height: 50px;

                    font-size: 21px;
                }

            }

        </style>

    </head>


    <body>


        <!-- Background -->

        <div class="background-shape shape-one"></div>

        <div class="background-shape shape-two"></div>


        <!-- =====================================================
             NAVBAR
        ====================================================== -->

        <nav class="navbar navbar-expand-lg navbar-dark portal-navbar">

            <div class="container">


                <a
                    class="navbar-brand portal-brand"
                    href="${pageContext.request.contextPath}/">

                    <i class="bi bi-mortarboard-fill me-2"></i>

                    Student Portal

                </a>


                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarContent"
                    aria-controls="navbarContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation">

                    <span class="navbar-toggler-icon"></span>

                </button>


                <div
                    class="collapse navbar-collapse"
                    id="navbarContent">

                    <ul class="navbar-nav ms-auto">


                        <li class="nav-item">

                            <a
                                class="nav-link active"
                                href="${pageContext.request.contextPath}/StudentServlet?action=new">

                                <i class="bi bi-person-plus me-1"></i>

                                Registration

                            </a>

                        </li>


                        <li class="nav-item">

                            <a
                                class="nav-link"
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
             MAIN
        ====================================================== -->

        <main class="page-wrapper">

            <div class="container">

                <div class="row justify-content-center">

                    <div class="col-12 col-xl-10">


                        <div class="card form-card">


                            <!-- =================================================
                                 HEADER
                            ================================================== -->

                            <div class="form-header">

                                <div class="header-content d-flex align-items-center gap-3">


                                    <div class="header-icon">

                                        <c:choose>

                                            <c:when test="${not empty student}">

                                                <i class="bi bi-person-vcard"></i>

                                            </c:when>

                                            <c:otherwise>

                                                <i class="bi bi-person-plus-fill"></i>

                                            </c:otherwise>

                                        </c:choose>

                                    </div>


                                    <div>

                                        <c:choose>

                                            <c:when test="${not empty student}">

                                                <h2>
                                                    Edit Student
                                                </h2>

                                                <p>
                                                    Update and manage the selected
                                                    student's information.
                                                </p>

                                                <span class="mode-badge">

                                                    <i class="bi bi-pencil-square"></i>

                                                    Editing Student #${student.id}

                                                </span>

                                            </c:when>


                                            <c:otherwise>

                                                <h2>
                                                    Add New Student
                                                </h2>

                                                <p>
                                                    Create a new student profile
                                                    in the Student Management System.
                                                </p>

                                                <span class="mode-badge">

                                                    <i class="bi bi-person-plus-fill"></i>

                                                    New Student Registration

                                                </span>

                                            </c:otherwise>

                                        </c:choose>

                                    </div>

                                </div>

                            </div>


                            <!-- =================================================
                                 FORM BODY
                            ================================================== -->

                            <div class="form-body">


                                <form
                                    action="${pageContext.request.contextPath}/StudentServlet"
                                    method="post">


                                    <!-- Hidden ID -->

                                    <c:if test="${not empty student}">

                                        <input
                                            type="hidden"
                                            name="id"
                                            value="${student.id}">

                                    </c:if>


                                    <!-- Hidden Action -->

                                    <c:choose>

                                        <c:when test="${not empty student}">

                                            <input
                                                type="hidden"
                                                name="action"
                                                value="update">

                                        </c:when>

                                        <c:otherwise>

                                            <input
                                                type="hidden"
                                                name="action"
                                                value="save">

                                        </c:otherwise>

                                    </c:choose>


                                    <!-- =================================================
                                         PERSONAL INFORMATION
                                    ================================================== -->

                                    <div class="section-block">


                                        <div class="section-heading">

                                            <div class="section-icon">

                                                <i class="bi bi-person"></i>

                                            </div>


                                            <div>

                                                <h5 class="section-title">
                                                    Personal Information
                                                </h5>

                                                <p class="section-description">
                                                    Enter the student's basic personal
                                                    information.
                                                </p>

                                            </div>

                                        </div>


                                        <div class="row g-4">


                                            <!-- Name -->

                                            <div class="col-md-6">

                                                <label
                                                    for="name"
                                                    class="form-label">

                                                    Full Name

                                                    <span class="required">*</span>

                                                </label>


                                                <div class="input-group">

                                                    <span class="input-group-text">

                                                        <i class="bi bi-person"></i>

                                                    </span>


                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        id="name"
                                                        name="name"
                                                        value="${student.name}"
                                                        placeholder="Enter student's full name"
                                                        required>

                                                </div>

                                            </div>


                                            <!-- Email -->

                                            <div class="col-md-6">

                                                <label
                                                    for="email"
                                                    class="form-label">

                                                    Email Address

                                                    <span class="required">*</span>

                                                </label>


                                                <div class="input-group">

                                                    <span class="input-group-text">

                                                        <i class="bi bi-envelope"></i>

                                                    </span>


                                                    <input
                                                        type="email"
                                                        class="form-control"
                                                        id="email"
                                                        name="email"
                                                        value="${student.email}"
                                                        placeholder="student@example.com"
                                                        required>

                                                </div>

                                            </div>


                                            <!-- Age -->

                                            <div class="col-md-4">

                                                <label
                                                    for="age"
                                                    class="form-label">

                                                    Age

                                                    <span class="required">*</span>

                                                </label>


                                                <div class="input-group">

                                                    <span class="input-group-text">

                                                        <i class="bi bi-calendar3"></i>

                                                    </span>


                                                    <input
                                                        type="number"
                                                        class="form-control"
                                                        id="age"
                                                        name="age"
                                                        value="${student.age}"
                                                        min="1"
                                                        max="100"
                                                        placeholder="Enter age"
                                                        required>

                                                </div>

                                            </div>


                                            <!-- Date of Birth -->

                                            <div class="col-md-4">

                                                <label
                                                    for="dateOfBirth"
                                                    class="form-label">

                                                    Date of Birth

                                                </label>




                                                <span class="input-group-text">

                                                    <i class="bi bi-calendar-event"></i>

                                                </span>


                                                <input
                                                    type="date"
                                                    class="form-control"
                                                    id="dateOfBirth"
                                                    name="dateOfBirth"
                                                    value="${student.dateOfBirth}">



                                            </div>


                                            <!-- Gender -->

                                            <div class="col-md-4">

                                                <label
                                                    for="gender"
                                                    class="form-label">

                                                    Gender

                                                    <span class="required">*</span>

                                                </label>


                                                <select
                                                    class="form-select"
                                                    id="gender"
                                                    name="gender"
                                                    required>

                                                    <c:choose>

                                                        <c:when test="${empty student}">

                                                            <option value="" selected disabled>
                                                                Select gender
                                                            </option>

                                                        </c:when>

                                                        <c:otherwise>

                                                            <option value="" disabled>
                                                                Select gender
                                                            </option>

                                                        </c:otherwise>

                                                    </c:choose>


                                                    <c:choose>

                                                        <c:when test="${student.gender == 'Male'}">

                                                            <option value="Male" selected>
                                                                Male
                                                            </option>

                                                        </c:when>

                                                        <c:otherwise>

                                                            <option value="Male">
                                                                Male
                                                            </option>

                                                        </c:otherwise>

                                                    </c:choose>


                                                    <c:choose>

                                                        <c:when test="${student.gender == 'Female'}">

                                                            <option value="Female" selected>
                                                                Female
                                                            </option>

                                                        </c:when>

                                                        <c:otherwise>

                                                            <option value="Female">
                                                                Female
                                                            </option>

                                                        </c:otherwise>

                                                    </c:choose>


                                                    <c:choose>

                                                        <c:when test="${student.gender == 'Other'}">

                                                            <option value="Other" selected>
                                                                Other
                                                            </option>

                                                        </c:when>

                                                        <c:otherwise>

                                                            <option value="Other">
                                                                Other
                                                            </option>

                                                        </c:otherwise>

                                                    </c:choose>

                                                </select>

                                            </div>

                                        </div>

                                    </div>


                                    <!-- =================================================
                                         FINANCIAL INFORMATION
                                    ================================================== -->

                                    <div class="section-block">


                                        <div class="section-heading">

                                            <div class="section-icon">

                                                <i class="bi bi-briefcase"></i>

                                            </div>


                                            <div>

                                                <h5 class="section-title">
                                                    Financial Information
                                                </h5>

                                                <p class="section-description">
                                                    Manage salary and account status.
                                                </p>

                                            </div>

                                        </div>


                                        <div class="row g-4">


                                            <!-- Salary -->

                                            <div class="col-md-6">

                                                <label
                                                    for="salary"
                                                    class="form-label">

                                                    Salary

                                                </label>


                                                <div class="input-group">

                                                    <span class="input-group-text">

                                                        <i class="bi bi-cash-stack"></i>

                                                    </span>


                                                    <input
                                                        type="number"
                                                        class="form-control"
                                                        id="salary"
                                                        name="salary"
                                                        value="${student.salary}"
                                                        step="0.01"
                                                        min="0"
                                                        placeholder="Enter salary">

                                                </div>


                                                <div class="form-text">

                                                    Enter salary with up to two
                                                    decimal places.

                                                </div>

                                            </div>


                                            <!-- Active -->

                                            <div class="col-md-6">

                                                <label class="form-label">

                                                    Account Status

                                                </label>


                                                <div class="status-card">


                                                    <div class="status-title">

                                                        Student Account

                                                    </div>


                                                    <div class="status-description">

                                                        Enable this option if the
                                                        student is currently active.

                                                    </div>


                                                    <div class="form-check form-switch">


                                                        <!--
                                                             Add mode:
                                                             Active by default.
                                                        -->

                                                        <c:choose>

                                                            <c:when test="${empty student or student.active}">

                                                                <input
                                                                    class="form-check-input"
                                                                    type="checkbox"
                                                                    role="switch"
                                                                    id="active"
                                                                    name="active"
                                                                    checked>

                                                            </c:when>


                                                            <c:otherwise>

                                                                <input
                                                                    class="form-check-input"
                                                                    type="checkbox"
                                                                    role="switch"
                                                                    id="active"
                                                                    name="active">

                                                            </c:otherwise>

                                                        </c:choose>


                                                        <label
                                                            class="form-check-label"
                                                            for="active">

                                                            Active Student

                                                        </label>


                                                    </div>

                                                </div>

                                            </div>


                                        </div>

                                    </div>


                                    <!-- =================================================
                                         ADDITIONAL INFORMATION
                                    ================================================== -->

                                    <div class="section-block">


                                        <div class="section-heading">

                                            <div class="section-icon">

                                                <i class="bi bi-card-text"></i>

                                            </div>


                                            <div>

                                                <h5 class="section-title">
                                                    Additional Information
                                                </h5>

                                                <p class="section-description">
                                                    Add any additional information
                                                    about the student.
                                                </p>

                                            </div>

                                        </div>


                                        <div class="row">


                                            <div class="col-12">

                                                <label
                                                    for="description"
                                                    class="form-label">

                                                    Description

                                                </label>


                                                <textarea
                                                    class="form-control"
                                                    id="description"
                                                    name="description"
                                                    placeholder="Write additional information about the student..."><c:out value="${student.description}"/></textarea>

                                            </div>


                                        </div>

                                    </div>


                                    <!-- =================================================
                                         REGISTRATION TIME
                                    ================================================== -->

                                    <c:if test="${not empty student}">

                                        <input
                                            type="hidden"
                                            name="registrationTime"
                                            value="${student.registrationTime}">

                                    </c:if>


                                    <!-- =================================================
                                         FORM ACTIONS
                                    ================================================== -->

                                    <div class="form-actions">


                                        <div class="d-flex
                                             flex-column
                                             flex-sm-row
                                             justify-content-between
                                             align-items-sm-center
                                             gap-3">


                                            <div class="text-muted small">

                                                <i class="bi bi-info-circle me-1"></i>

                                                Fields marked with
                                                <span class="required">*</span>
                                                are required.

                                            </div>


                                            <div class="d-flex gap-2 flex-wrap">


                                                <!-- Back -->

                                                <a
                                                    href="${pageContext.request.contextPath}/StudentServlet"
                                                    class="btn btn-outline-secondary">

                                                    <i class="bi bi-arrow-left me-1"></i>

                                                    Back

                                                </a>


                                                <!-- Reset -->

                                                <button
                                                    type="reset"
                                                    class="btn btn-outline-secondary">

                                                    <i class="bi bi-arrow-counterclockwise me-1"></i>

                                                    Reset

                                                </button>


                                                <!-- Submit -->

                                                <c:choose>

                                                    <c:when test="${not empty student}">

                                                        <button
                                                            type="submit"
                                                            class="btn btn-primary">

                                                            <i class="bi bi-check2-circle me-1"></i>

                                                            Update Student

                                                        </button>

                                                    </c:when>


                                                    <c:otherwise>

                                                        <button
                                                            type="submit"
                                                            class="btn btn-primary">

                                                            <i class="bi bi-person-plus-fill me-1"></i>

                                                            Add Student

                                                        </button>

                                                    </c:otherwise>

                                                </c:choose>


                                            </div>

                                        </div>

                                    </div>


                                </form>

                            </div>

                        </div>


                        <!-- =================================================
                             FOOTER
                        ================================================== -->

                        <div class="footer">

                            <i class="bi bi-shield-check text-success me-1"></i>

                            Student Management System

                            <span class="mx-2">•</span>

                            Secure Student Portal

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