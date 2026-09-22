package com.sms.sms.service;

import com.sms.sms.model.Student;
import com.sms.sms.repository.StudentRepository;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public class StudentService {

    private final StudentRepository repository;

    public StudentService() {
        repository = new StudentRepository();
    }

    // =========================================================
    // CREATE
    // =========================================================
    public void save(Student student) throws SQLException {
        repository.save(student);
    }

    // =========================================================
    // READ ALL
    // =========================================================
    public List<Student> findAll() throws SQLException {
        return repository.findAll();
    }

    // =========================================================
    // READ BY ID
    // =========================================================
    public Optional<Student> findById(int id)
            throws SQLException {

        return repository.findById(id);
    }

    // =========================================================
    // UPDATE
    // =========================================================
    public boolean update(Student student)
            throws SQLException {

        return repository.update(student);
    }

    // =========================================================
    // DELETE
    // =========================================================
    public boolean delete(int id)
            throws SQLException {

        return repository.delete(id);
    }
}
