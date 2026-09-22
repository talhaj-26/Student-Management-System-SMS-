package com.sms.sms.servlet;

import com.sms.sms.model.Student;
import com.sms.sms.service.StudentService;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;

@WebServlet(
        name = "StudentServlet",
        urlPatterns = {"/StudentServlet"}
)
public class StudentServlet extends HttpServlet {

    private StudentService studentService;

    @Override
    public void init() throws ServletException {
        studentService = new StudentService();
    }

    // =========================================================
    // GET
    // =========================================================
    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action == null || action.isBlank()) {
            action = "list";
        }

        try {

            switch (action) {

                case "new":
                    showNewForm(request, response);
                    break;

                case "edit":
                    showEditForm(request, response);
                    break;

                case "view":
                    viewStudent(request, response);
                    break;

                case "delete":
                    deleteStudent(request, response);
                    break;

                case "list":
                    showStudentList(request, response);
                    break;

                default:
                    response.sendRedirect(
                            request.getContextPath()
                            + "/StudentServlet"
                    );
                    break;
            }

        } catch (Exception e) {

            e.printStackTrace();

            throw new ServletException(
                    "Error while processing student request.",
                    e
            );
        }
    }

    // =========================================================
    // SHOW NEW STUDENT FORM
    // =========================================================
    private void showNewForm(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.getRequestDispatcher(
                "/student-form.jsp"
        ).forward(
                request,
                response
        );
    }

    // =========================================================
    // SHOW EDIT FORM
    // =========================================================
    private void showEditForm(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws Exception {

        String idParameter = request.getParameter("id");

        if (idParameter == null || idParameter.isBlank()) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/StudentServlet"
            );

            return;
        }

        int id = Integer.parseInt(idParameter);

        Optional<Student> student
                = studentService.findById(id);

        // IMPORTANT:
        // Optional can be empty, so check isEmpty()
        if (student.isEmpty()) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/StudentServlet"
            );

            return;
        }

        request.setAttribute(
                "student",
                student.get()
        );

        request.getRequestDispatcher(
                "/student-form.jsp"
        ).forward(
                request,
                response
        );
    }

    // =========================================================
    // SHOW STUDENT
    // =========================================================
    private void viewStudent(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws Exception {

        String idParameter = request.getParameter("id");

        if (idParameter == null || idParameter.isBlank()) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/StudentServlet"
            );

            return;
        }

        int id = Integer.parseInt(idParameter);

        Optional<Student> student
                = studentService.findById(id);

        if (student.isEmpty()) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/StudentServlet"
            );

            return;
        }

        request.setAttribute(
                "student",
                student.get()
        );

        request.getRequestDispatcher(
                "/student-view.jsp"
        ).forward(
                request,
                response
        );
    }

    // =========================================================
    // DELETE STUDENT
    // =========================================================
    private void deleteStudent(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws Exception {

        String idParameter = request.getParameter("id");

        if (idParameter == null || idParameter.isBlank()) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/StudentServlet"
            );

            return;
        }

        int id = Integer.parseInt(idParameter);

        boolean deleted
                = studentService.delete(id);

        if (deleted) {

            System.out.println(
                    "Student deleted successfully. ID: " + id
            );

        } else {

            System.out.println(
                    "Student not found. ID: " + id
            );
        }

        response.sendRedirect(
                request.getContextPath()
                + "/StudentServlet"
        );
    }

    // =========================================================
    // SHOW STUDENT LIST
    // =========================================================
    private void showStudentList(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws Exception {

        List<Student> students
                = studentService.findAll();

        request.setAttribute(
                "students",
                students
        );

        request.getRequestDispatcher(
                "/student-list.jsp"
        ).forward(
                request,
                response
        );
    }

    // =========================================================
    // POST
    // =========================================================
    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String action
                = request.getParameter("action");

        try {

            // SAVE NEW STUDENT
            if ("save".equals(action)) {

                Student student
                        = createStudentFromRequest(request);

                // Automatically set registration date and time
                student.setRegistrationTime(
                        LocalDateTime.now()
                );

                studentService.save(student);

                System.out.println(
                        "Student saved successfully."
                );

                response.sendRedirect(
                        request.getContextPath()
                        + "/StudentServlet"
                );

            } // UPDATE EXISTING STUDENT
            else if ("update".equals(action)) {

                int id = Integer.parseInt(
                        request.getParameter("id")
                );

                // Get existing student from database
                Optional<Student> existingStudent
                        = studentService.findById(id);

                if (existingStudent.isEmpty()) {

                    response.sendRedirect(
                            request.getContextPath()
                            + "/StudentServlet"
                    );

                    return;
                }

                Student student
                        = createStudentFromRequest(request);

                student.setId(id);

                student.setRegistrationTime(
                        existingStudent
                                .get()
                                .getRegistrationTime()
                );

                studentService.update(student);

                response.sendRedirect(
                        request.getContextPath()
                        + "/StudentServlet"
                );

                return;
            } // INVALID ACTION
            else {

                response.sendRedirect(
                        request.getContextPath()
                        + "/StudentServlet"
                );
            }

        } catch (Exception e) {

            e.printStackTrace();

            throw new ServletException(
                    "Error while saving/updating student.",
                    e
            );
        }
    }

    // =========================================================
    // REQUEST -> STUDENT
    // =========================================================
    private Student createStudentFromRequest(
            HttpServletRequest request
    ) {

        Student student = new Student();

        // Name
        student.setName(
                request.getParameter("name")
        );

        // Email
        student.setEmail(
                request.getParameter("email")
        );

        // Age
        String age
                = request.getParameter("age");

        if (age != null && !age.isBlank()) {

            student.setAge(
                    Integer.parseInt(age)
            );
        }

        // Salary
        String salary
                = request.getParameter("salary");

        if (salary != null && !salary.isBlank()) {

            student.setSalary(
                    new BigDecimal(salary)
            );
        }

        // Date of Birth
        String dateOfBirth
                = request.getParameter("dateOfBirth");

        if (dateOfBirth != null
                && !dateOfBirth.isBlank()) {

            student.setDateOfBirth(
                    LocalDate.parse(dateOfBirth)
            );
        }

        // Gender
        student.setGender(
                request.getParameter("gender")
        );

        // Active
        student.setActive(
                request.getParameter("active") != null
        );

        // Description
        student.setDescription(
                request.getParameter("description")
        );

        return student;
    }
}
