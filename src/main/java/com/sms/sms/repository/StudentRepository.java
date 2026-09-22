package com.sms.sms.repository;

import com.sms.sms.model.Student;
import com.sms.sms.util.DBConnection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class StudentRepository {

    // =========================================================
    // CREATE
    // =========================================================
    public void save(Student student) throws SQLException {

        String sql = """
                INSERT INTO students
                (
                    name,
                    email,
                    age,
                    salary,
                    date_of_birth,
                    registration_time,
                    gender,
                    active,
                    description
                )
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
                """;

        try (Connection connection = DBConnection.getConnection(); PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, student.getName());
            statement.setString(2, student.getEmail());
            statement.setInt(3, student.getAge());
            statement.setBigDecimal(4, student.getSalary());

            if (student.getDateOfBirth() != null) {
                statement.setDate(
                        5,
                        Date.valueOf(student.getDateOfBirth())
                );
            } else {
                statement.setNull(5, java.sql.Types.DATE);
            }

            if (student.getRegistrationTime() != null) {
                statement.setTimestamp(
                        6,
                        Timestamp.valueOf(student.getRegistrationTime())
                );
            } else {
                statement.setNull(6, java.sql.Types.TIMESTAMP);
            }

            statement.setString(7, student.getGender());
            statement.setBoolean(8, student.isActive());
            statement.setString(9, student.getDescription());

            statement.executeUpdate();
        }
    }

    // =========================================================
    // READ ALL
    // =========================================================
    public List<Student> findAll() throws SQLException {

        String sql = """
                SELECT
                    id,
                    name,
                    email,
                    age,
                    salary,
                    date_of_birth,
                    registration_time,
                    gender,
                    active,
                    description
                FROM students
                ORDER BY id
                """;

        List<Student> students = new ArrayList<>();

        try (Connection connection = DBConnection.getConnection(); PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                students.add(mapRowToStudent(resultSet));
            }
        }

        return students;
    }

    // =========================================================
    // READ BY ID
    // =========================================================
    public Optional<Student> findById(int id) throws SQLException {

        String sql = """
                SELECT
                    id,
                    name,
                    email,
                    age,
                    salary,
                    date_of_birth,
                    registration_time,
                    gender,
                    active,
                    description
                FROM students
                WHERE id = ?
                """;

        try (Connection connection = DBConnection.getConnection(); PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, id);

            try (ResultSet resultSet = statement.executeQuery()) {

                if (resultSet.next()) {
                    return Optional.of(mapRowToStudent(resultSet));
                }
            }
        }

        return Optional.empty();
    }

    // =========================================================
    // UPDATE
    // =========================================================
    public boolean update(Student student) throws SQLException {

        String sql = """
                UPDATE students
                SET
                    name = ?,
                    email = ?,
                    age = ?,
                    salary = ?,
                    date_of_birth = ?,
                    registration_time = ?,
                    gender = ?,
                    active = ?,
                    description = ?
                WHERE id = ?
                """;

        try (Connection connection = DBConnection.getConnection(); PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, student.getName());
            statement.setString(2, student.getEmail());
            statement.setInt(3, student.getAge());
            statement.setBigDecimal(4, student.getSalary());

            if (student.getDateOfBirth() != null) {
                statement.setDate(
                        5,
                        Date.valueOf(student.getDateOfBirth())
                );
            } else {
                statement.setNull(5, java.sql.Types.DATE);
            }

            if (student.getRegistrationTime() != null) {
                statement.setTimestamp(
                        6,
                        Timestamp.valueOf(student.getRegistrationTime())
                );
            } else {
                statement.setNull(6, java.sql.Types.TIMESTAMP);
            }

            statement.setString(7, student.getGender());
            statement.setBoolean(8, student.isActive());
            statement.setString(9, student.getDescription());

            statement.setInt(10, student.getId());

            int affectedRows = statement.executeUpdate();

            return affectedRows > 0;
        }
    }

    // =========================================================
    // DELETE
    // =========================================================
    public boolean delete(int id) throws SQLException {

        String sql = """
                DELETE FROM students
                WHERE id = ?
                """;

        try (Connection connection = DBConnection.getConnection(); PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, id);

            int affectedRows = statement.executeUpdate();

            return affectedRows > 0;
        }
    }

    // =========================================================
    // RESULT SET → STUDENT
    // =========================================================
    private Student mapRowToStudent(ResultSet resultSet)
            throws SQLException {

        Student student = new Student();

        student.setId(resultSet.getInt("id"));
        student.setName(resultSet.getString("name"));
        student.setEmail(resultSet.getString("email"));
        student.setAge(resultSet.getInt("age"));
        student.setSalary(resultSet.getBigDecimal("salary"));

        Date dateOfBirth = resultSet.getDate("date_of_birth");

        if (dateOfBirth != null) {
            student.setDateOfBirth(dateOfBirth.toLocalDate());
        }

        Timestamp registrationTime
                = resultSet.getTimestamp("registration_time");

        if (registrationTime != null) {
            student.setRegistrationTime(
                    registrationTime.toLocalDateTime()
            );
        }

        student.setGender(resultSet.getString("gender"));
        student.setActive(resultSet.getBoolean("active"));
        student.setDescription(resultSet.getString("description"));

        return student;
    }
}
