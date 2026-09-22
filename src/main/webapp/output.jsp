<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">

        <title>Student Data | Student Portal</title>

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

            .result-card {
                max-width: 600px;
                border: none;
                border-radius: 20px;
                overflow: hidden;
                box-shadow: 0 15px 40px rgba(0, 0, 0, 0.10);
            }

            .result-header {
                background: linear-gradient(135deg, #0d6efd, #084298);
                color: white;
                padding: 30px;
            }

            .success-icon {
                width: 65px;
                height: 65px;

                display: flex;
                align-items: center;
                justify-content: center;

                margin: 0 auto 15px;

                border-radius: 50%;
                background: rgba(255, 255, 255, 0.15);

                font-size: 30px;
            }

            .student-info {
                background: #f8faff;
                border: 1px solid #e5ebf5;
                border-radius: 14px;
                padding: 18px;
            }

            .info-label {
                color: #6c757d;
                font-size: 14px;
                margin-bottom: 4px;
            }

            .info-value {
                font-size: 17px;
                font-weight: 600;
            }

            .btn {
                border-radius: 10px;
                font-weight: 600;
            }

        </style>

    </head>


    <body>


        <div class="container min-vh-100
             d-flex align-items-center
             justify-content-center">


            <div class="card result-card w-100">


                <!-- Header -->

                <div class="result-header text-center">

                    <div class="success-icon">

                        <i class="bi bi-check-lg"></i>

                    </div>

                    <h3 class="fw-bold mb-1">
                        Data Received Successfully
                    </h3>

                    <p class="mb-0 opacity-75">
                        The Servlet received your student information.
                    </p>

                </div>


                <!-- Body -->

                <div class="card-body p-4 p-md-5">


                    <!-- Message -->

                    <div class="alert alert-success text-center">

                        <i class="bi bi-check-circle-fill me-2"></i>

                        ${message}

                    </div>


                    <!-- Student Information -->

                    <h5 class="fw-bold mb-3">

                        <i class="bi bi-person-vcard
                           text-primary me-2"></i>

                        Submitted Information

                    </h5>


                    <div class="student-info mb-4">


                        <div class="mb-3">

                            <div class="info-label">
                                Student Name
                            </div>

                            <div class="info-value">

                                <i class="bi bi-person
                                   text-primary me-2"></i>

                                ${name}

                            </div>

                        </div>


                        <div>

                            <div class="info-label">
                                Student Email
                            </div>

                            <div class="info-value text-break">

                                <i class="bi bi-envelope
                                   text-primary me-2"></i>

                                ${email}

                            </div>

                        </div>

                    </div>


                    <!-- Back Button -->

                    <a href="${pageContext.request.contextPath}/"
                       class="btn btn-primary w-100">

                        <i class="bi bi-arrow-left me-2"></i>

                        Back to Student Portal

                    </a>

                </div>

            </div>

        </div>


    </body>

</html>