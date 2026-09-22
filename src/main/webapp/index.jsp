<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">

        <title>Student Management System</title>


        <!-- Bootstrap -->

        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
            rel="stylesheet">


        <!-- Bootstrap Icons -->

        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


        <style>

            /* =========================================
               GLOBAL
            ========================================= */

            * {
                box-sizing: border-box;
            }

            body {

                min-height: 100vh;

                margin: 0;

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
                    #eaf2ff 100%
                    );

                overflow: hidden;
            }


            /* =========================================
               BACKGROUND DECORATIONS
            ========================================= */

            .background-shape {

                position: fixed;

                border-radius: 50%;

                filter: blur(1px);

                opacity: 0.55;

                z-index: 0;
            }


            .shape-one {

                width: 320px;

                height: 320px;

                top: -120px;

                left: -100px;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd,
                    #6f42c1
                    );
            }


            .shape-two {

                width: 280px;

                height: 280px;

                right: -100px;

                bottom: -100px;

                background:
                    linear-gradient(
                    135deg,
                    #20c997,
                    #0d6efd
                    );
            }


            .shape-three {

                width: 120px;

                height: 120px;

                right: 15%;

                top: 12%;

                background: #ffc107;

                opacity: 0.18;
            }


            /* =========================================
               MAIN CONTAINER
            ========================================= */

            .portal-container {

                position: relative;

                z-index: 2;

                min-height: 100vh;

                display: flex;

                align-items: center;

                justify-content: center;

                padding: 30px 15px;
            }


            /* =========================================
               PORTAL CARD
            ========================================= */

            .portal-card {

                position: relative;

                width: 100%;

                max-width: 680px;

                border: 1px solid
                    rgba(255, 255, 255, 0.8);

                border-radius: 28px;

                overflow: hidden;

                background:
                    rgba(255, 255, 255, 0.88);

                backdrop-filter: blur(18px);

                -webkit-backdrop-filter: blur(18px);

                box-shadow:
                    0 25px 70px
                    rgba(13, 110, 253, 0.15),

                    0 8px 30px
                    rgba(0, 0, 0, 0.06);

                animation:
                    cardAppear 0.7s ease-out;
            }


            @keyframes cardAppear {

                from {

                    opacity: 0;

                    transform:
                        translateY(25px)
                        scale(0.97);
                }

                to {

                    opacity: 1;

                    transform:
                        translateY(0)
                        scale(1);
                }
            }


            /* =========================================
               HEADER
            ========================================= */

            .portal-header {

                position: relative;

                padding:
                    48px 30px 42px;

                text-align: center;

                color: white;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd 0%,
                    #084298 55%,
                    #062c68 100%
                    );

                overflow: hidden;
            }


            /* Header light effect */

            .portal-header::before {

                content: "";

                position: absolute;

                width: 260px;

                height: 260px;

                top: -150px;

                right: -90px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.08);
            }


            .portal-header::after {

                content: "";

                position: absolute;

                width: 180px;

                height: 180px;

                bottom: -120px;

                left: -60px;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.06);
            }


            /* =========================================
               ICON
            ========================================= */

            .portal-icon {

                position: relative;

                z-index: 2;

                width: 88px;

                height: 88px;

                margin:
                    0 auto 22px;

                display: flex;

                align-items: center;

                justify-content: center;

                border-radius: 50%;

                background:
                    rgba(255, 255, 255, 0.13);

                border:
                    1px solid
                    rgba(255, 255, 255, 0.25);

                box-shadow:
                    0 8px 25px
                    rgba(0, 0, 0, 0.12);

                font-size: 40px;

                animation:
                    iconFloat 3s ease-in-out infinite;
            }


            @keyframes iconFloat {

                0%,
                100% {
                    transform: translateY(0);
                }

                50% {
                    transform: translateY(-5px);
                }
            }


            /* =========================================
               HEADER TEXT
            ========================================= */

            .portal-header h2 {

                position: relative;

                z-index: 2;

                font-size: 29px;

                font-weight: 750;

                letter-spacing: -0.4px;

                margin-bottom: 10px;
            }


            .portal-header p {

                position: relative;

                z-index: 2;

                max-width: 480px;

                margin:
                    0 auto;

                color:
                    rgba(255, 255, 255, 0.82);

                font-size: 15px;

                line-height: 1.6;
            }


            /* =========================================
               BODY
            ========================================= */

            .portal-body {

                padding:
                    42px 42px 45px;

                text-align: center;
            }


            .welcome-badge {

                display: inline-flex;

                align-items: center;

                gap: 7px;

                padding:
                    7px 13px;

                margin-bottom: 16px;

                border-radius: 30px;

                background-color: #e8f1ff;

                color: #0d6efd;

                font-size: 12px;

                font-weight: 700;

                text-transform: uppercase;

                letter-spacing: 0.5px;
            }


            .portal-body h4 {

                color: #212529;

                font-size: 24px;

                font-weight: 700;

                margin-bottom: 12px;
            }


            .description {

                max-width: 520px;

                margin:
                    0 auto 30px;

                color: #6c757d;

                font-size: 15px;

                line-height: 1.8;
            }


            /* =========================================
               FEATURES
            ========================================= */

            .feature-row {

                display: flex;

                justify-content: center;

                flex-wrap: wrap;

                gap: 10px;

                margin-bottom: 28px;
            }


            .feature-item {

                display: inline-flex;

                align-items: center;

                gap: 7px;

                padding:
                    8px 12px;

                border-radius: 10px;

                background-color: #f8f9fa;

                border:
                    1px solid #edf0f2;

                color: #495057;

                font-size: 12px;

                font-weight: 600;

                transition:
                    all 0.2s ease;
            }


            .feature-item:hover {

                transform:
                    translateY(-2px);

                background-color: #eef4ff;

                border-color: #d7e5ff;

                color: #0d6efd;
            }


            .feature-item i {

                color: #0d6efd;

                font-size: 14px;
            }


            /* =========================================
               MANAGE BUTTON
            ========================================= */

            .manage-btn {

                position: relative;

                min-height: 55px;

                border: none;

                border-radius: 13px;

                font-size: 15px;

                font-weight: 700;

                letter-spacing: 0.1px;

                background:
                    linear-gradient(
                    135deg,
                    #0d6efd,
                    #084298
                    );

                box-shadow:
                    0 8px 20px
                    rgba(13, 110, 253, 0.25);

                overflow: hidden;

                transition:
                    all 0.25s ease;
            }


            .manage-btn::before {

                content: "";

                position: absolute;

                top: 0;

                left: -100%;

                width: 100%;

                height: 100%;

                background:
                    linear-gradient(
                    90deg,
                    transparent,
                    rgba(255, 255, 255, 0.18),
                    transparent
                    );

                transition:
                    left 0.5s ease;
            }


            .manage-btn:hover {

                transform:
                    translateY(-3px);

                box-shadow:
                    0 13px 28px
                    rgba(13, 110, 253, 0.30);

                background:
                    linear-gradient(
                    135deg,
                    #0b63e5,
                    #07377f
                    );
            }


            .manage-btn:hover::before {

                left: 100%;
            }


            .manage-btn i {

                transition:
                    transform 0.25s ease;
            }


            .manage-btn:hover
            .arrow-icon {

                transform:
                    translateX(5px);
            }


            /* =========================================
               FOOTER
            ========================================= */

            .portal-footer {

                margin-top: 25px;

                color: #adb5bd;

                font-size: 12px;
            }


            .portal-footer i {

                color: #198754;
            }


            /* =========================================
               RESPONSIVE
            ========================================= */

            @media (max-width: 576px) {

                body {

                    overflow: auto;
                }


                .portal-container {

                    padding:
                        20px 12px;
                }


                .portal-card {

                    border-radius: 22px;
                }


                .portal-header {

                    padding:
                        38px 22px 35px;
                }


                .portal-header h2 {

                    font-size: 23px;
                }


                .portal-header p {

                    font-size: 14px;
                }


                .portal-icon {

                    width: 75px;

                    height: 75px;

                    font-size: 32px;
                }


                .portal-body {

                    padding:
                        32px 22px 35px;
                }


                .portal-body h4 {

                    font-size: 21px;
                }


                .description {

                    font-size: 14px;
                }


                .feature-row {

                    gap: 7px;
                }

            }

        </style>

    </head>


    <body>


        <!-- =========================================
             BACKGROUND DECORATIONS
        ========================================== -->

        <div class="background-shape shape-one"></div>

        <div class="background-shape shape-two"></div>

        <div class="background-shape shape-three"></div>


        <!-- =========================================
             MAIN CONTAINER
        ========================================== -->

        <div class="portal-container">


            <!-- =====================================
                 PORTAL CARD
            ====================================== -->

            <div class="portal-card">


                <!-- =================================
                     HEADER
                ================================== -->

                <div class="portal-header">


                    <!-- Icon -->

                    <div class="portal-icon">

                        <i class="bi bi-mortarboard-fill"></i>

                    </div>


                    <!-- Title -->

                    <h2>

                        Student Management System

                    </h2>


                    <!-- Subtitle -->

                    <p>

                        Manage student information
                        easily, efficiently and securely.

                    </p>

                </div>


                <!-- =================================
                     BODY
                ================================== -->

                <div class="portal-body">


                    <!-- Welcome Badge -->

                    <div class="welcome-badge">

                        <i class="bi bi-stars"></i>

                        Welcome

                    </div>


                    <!-- Welcome Text -->

                    <h4>

                        Welcome to Student Portal

                    </h4>


                    <p class="description">

                        A simple and organized platform to
                        view, add, update and manage student
                        information from one place.

                    </p>


                    <!-- =================================
                         FEATURES
                    ================================== -->

                    <div class="feature-row">


                        <div class="feature-item">
                            <a href="${pageContext.request.contextPath}/StudentServlet">
                                <i class="bi bi-people-fill"></i>

                                Student Records
                            </a>

                        </div>


                        <div class="feature-item">
                            <a href="${pageContext.request.contextPath}/StudentServlet?action=new">
                                <i class="bi bi-person-plus-fill"></i>

                                Registration
                            </a>
                        </div>


                        <div class="feature-item">

                            <i class="bi bi-pencil-square"></i>

                            Update Records

                        </div>


                        <div class="feature-item">

                            <i class="bi bi-shield-check"></i>

                            Secure

                        </div>


                    </div>


                    <!-- =================================
                         MANAGE BUTTON
                    ================================== -->

                    <a
                        href="${pageContext.request.contextPath}/StudentServlet"
                        class="btn btn-primary manage-btn w-100">


                        <i class="bi bi-people-fill me-2"></i>

                        Manage Students


                        <i
                            class="bi bi-arrow-right ms-2 arrow-icon">
                        </i>

                    </a>


                    <!-- Footer -->

                    <div class="portal-footer">

                        <i class="bi bi-check-circle-fill me-1"></i>

                        Student Management System

                        <span class="mx-1">•</span>

                        2026

                    </div>


                </div>

            </div>

        </div>


    </body>

</html>