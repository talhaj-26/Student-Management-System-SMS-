<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">

        <title>Student Portal</title>

        <!-- Bootstrap CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
            rel="stylesheet">

        <!-- Bootstrap Icons -->
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


        <style>

            body {
                min-height: 100vh;
                background: linear-gradient(135deg, #eef4ff, #f8f9fa);
                font-family: "Segoe UI", sans-serif;
            }

            /* Navbar */

            .navbar {
                background: linear-gradient(135deg, #0d6efd, #084298);
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.12);
            }

            .navbar-brand {
                font-weight: 700;
                letter-spacing: 0.5px;
            }


            /* Main Card */

            .portal-card {
                border: none;
                border-radius: 22px;
                overflow: hidden;
                box-shadow: 0 15px 40px rgba(0, 0, 0, 0.10);
            }


            /* Header */

            .portal-header {
                padding: 35px;
                color: white;
                background: linear-gradient(135deg, #0d6efd, #084298);
            }

            .profile-icon {
                width: 70px;
                height: 70px;

                display: flex;
                align-items: center;
                justify-content: center;

                border-radius: 50%;

                background: rgba(255, 255, 255, 0.15);

                font-size: 32px;
            }


            /* Information */

            .info-box {
                background: #f8faff;
                border: 1px solid #e6edfa;
                border-radius: 14px;
                padding: 18px;
                transition: 0.2s;
            }

            .info-box:hover {
                transform: translateY(-3px);
                box-shadow: 0 8px 20px rgba(13, 110, 253, 0.10);
            }

            .info-label {
                font-size: 13px;
                color: #6c757d;
                margin-bottom: 5px;
            }

            .info-value {
                font-size: 16px;
                font-weight: 600;
                color: #212529;
            }


            /* Skills */

            .skill-badge {
                padding: 9px 13px;
                border-radius: 20px;
                margin: 3px;
                font-weight: 500;
            }


            /* Form */

            .form-section {
                background: #f8faff;
                border: 1px solid #e6edfa;
                border-radius: 16px;
                padding: 25px;
            }

            .form-label {
                font-weight: 600;
            }

            .form-control {
                min-height: 46px;
                border-radius: 10px;
            }

            .form-control:focus {
                border-color: #86b7fe;
                box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.12);
            }

            .btn-send {
                min-height: 48px;
                border-radius: 10px;
                font-weight: 600;
            }


            /* Footer */

            .footer {
                color: #6c757d;
                font-size: 14px;
            }

        </style>

    </head>


    <body>


        <!-- =========================
             Navbar
        ========================= -->

        <nav class="navbar navbar-dark">

            <div class="container">

                <span class="navbar-brand">

                    <i class="bi bi-mortarboard-fill me-2"></i>

                    Student Portal

                </span>

                <span class="text-white small">

                    JSP & Servlet

                </span>

            </div>

        </nav>



        <!-- =========================
             Main Content
        ========================= -->

        <div class="container py-5">

            <div class="portal-card card mx-auto"
                 style="max-width: 850px;">


                <!-- =========================
                     Header
                ========================== -->

                <div class="portal-header">

                    <div class="d-flex align-items-center gap-3">

                        <div class="profile-icon">

                            <i class="bi bi-person-vcard"></i>

                        </div>

                        <div>

                            <h2 class="mb-1 fw-bold">
                                Welcome, ${name}!
                            </h2>

                            <p class="mb-0 opacity-75">
                                Student information received from Servlet
                            </p>

                        </div>

                    </div>

                </div>



                <div class="card-body p-4 p-md-5">


                    <!-- =========================
                         Student Information
                    ========================== -->

                    <div class="d-flex align-items-center mb-4">

                        <i class="bi bi-person-circle
                           text-primary fs-3 me-2"></i>

                        <h4 class="mb-0 fw-bold">
                            Student Information
                        </h4>

                    </div>


                    <div class="row g-3">


                        <!-- Name -->

                        <div class="col-md-4">

                            <div class="info-box">

                                <div class="info-label">
                                    <i class="bi bi-person me-1"></i>
                                    Student Name
                                </div>

                                <div class="info-value">
                                    ${name}
                                </div>

                            </div>

                        </div>


                        <!-- Age -->

                        <div class="col-md-4">

                            <div class="info-box">

                                <div class="info-label">
                                    <i class="bi bi-calendar3 me-1"></i>
                                    Age
                                </div>

                                <div class="info-value">
                                    ${age}
                                </div>

                            </div>

                        </div>


                        <!-- Email -->

                        <div class="col-md-4">

                            <div class="info-box">

                                <div class="info-label">
                                    <i class="bi bi-envelope me-1"></i>
                                    Email
                                </div>

                                <div class="info-value text-break">
                                    ${email}
                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- =========================
                         Skills
                    ========================== -->

                    <div class="mt-5">

                        <div class="d-flex align-items-center mb-3">

                            <i class="bi bi-code-slash
                               text-primary fs-3 me-2"></i>

                            <h4 class="mb-0 fw-bold">
                                Technical Skills
                            </h4>

                        </div>


                        <div>

                            <c:forEach var="skill" items="${skills}">

                                <span class="badge text-bg-primary skill-badge">

                                    <i class="bi bi-check-circle me-1"></i>

                                    ${skill}

                                </span>

                            </c:forEach>

                        </div>

                    </div>



                    <hr class="my-5">



                    <!-- =========================
                         Student Form
                    ========================== -->

                    <div class="form-section">


                        <div class="d-flex align-items-center mb-4">

                            <i class="bi bi-send-fill
                               text-primary fs-4 me-2"></i>

                            <div>

                                <h4 class="mb-1 fw-bold">
                                    Send Student Data
                                </h4>

                                <p class="text-muted mb-0 small">
                                    Submit information to the Servlet
                                </p>

                            </div>

                        </div>



                        <form action="" method="post">


                            <!-- Student Name -->

                            <div class="mb-3">

                                <label for="studentName"
                                       class="form-label">

                                    Student Name

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-person"></i>

                                    </span>

                                    <input
                                        type="text"
                                        id="studentName"
                                        name="stdName"
                                        class="form-control"
                                        placeholder="Enter student name"
                                        required>

                                </div>

                            </div>



                            <!-- Student Email -->

                            <div class="mb-4">

                                <label for="studentEmail"
                                       class="form-label">

                                    Student Email

                                </label>

                                <div class="input-group">

                                    <span class="input-group-text">

                                        <i class="bi bi-envelope"></i>

                                    </span>

                                    <input
                                        type="email"
                                        id="studentEmail"
                                        name="stdEmail"
                                        class="form-control"
                                        placeholder="student@example.com"
                                        required>

                                </div>

                            </div>



                            <!-- Submit -->

                            <button
                                type="submit"
                                class="btn btn-primary btn-send w-100">

                                <i class="bi bi-send me-2"></i>

                                Send to Servlet

                            </button>

                        </form>

                    </div>

                </div>

            </div>



            <!-- Footer -->

            <div class="text-center footer mt-4">

                <i class="bi bi-code-square me-1"></i>

                JSP & Servlet Practice

                <span class="mx-2">•</span>

                Student Portal

            </div>

        </div>



        <!-- Bootstrap JS -->

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
        </script>

    </body>

</html>