//package com.sms.sms.servlet;
//
//import java.io.IOException;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.util.ArrayList;
//import java.util.List;
//
//@WebServlet(name = "Hello", urlPatterns = {""})
//public class HelloServlet extends HttpServlet {
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        request.setAttribute("name", "Talha");
//        request.setAttribute("age", 26);
//        request.setAttribute("email", "talha@gmail.com");
//
//        List<String> skills = new ArrayList<>();
//
//        skills.add("HTML-5");
//        skills.add("BootStrap");
//        skills.add("CSS");
//        skills.add("JavaScript");
//        skills.add("Java");
//        skills.add("UML");
//        skills.add("JSP");
//
//        request.setAttribute("skills", skills);
//
//        request.getRequestDispatcher(
//                "/index1.jsp"
//        ).forward(
//                request,
//                response
//        );
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
////        Receive data from JSP
//        String studentName = request.getParameter("stdName");
//        String studenEmail = request.getParameter("stdEmail");
//
//        System.out.println("====== Data Received from JSP");
//
//        System.out.println("Student Name: " + studentName);
//        System.out.println("Student Email: " + studenEmail);
//
////        Send Message to JSP
//        request.setAttribute(
//                "message",
//                "Data receive successfully!"
//        );
//        request.setAttribute(
//                "name",
//                studentName
//        );
//        request.setAttribute(
//                "email",
//                studenEmail
//        );
//
////        Forward to JSP
//        request.getRequestDispatcher("/output.jsp")
//                .forward(request, response);
//    }
//}
