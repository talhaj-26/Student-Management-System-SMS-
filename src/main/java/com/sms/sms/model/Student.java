package com.sms.sms.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Student {

//    Student Fields.
    private int id;
    private String name;
    private String email;
    private int age;
    private BigDecimal salary;
    private LocalDate dateOfBirth;
    private LocalDateTime registrationTime;
    private String gender;
    private boolean active;
    private String description;

//    Defult Constractor.
    public Student() {
    }

//    All Fields Constractor.
    public Student(
            int id,
            String name,
            String email,
            int age,
            BigDecimal salary,
            LocalDate dateOfBirth,
            LocalDateTime registrationTime,
            String gender,
            boolean active,
            String description) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.age = age;
        this.salary = salary;
        this.dateOfBirth = dateOfBirth;
        this.registrationTime = registrationTime;
        this.gender = gender;
        this.active = active;
        this.description = description;
    }

//    Getter & Setter of All Fields.
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public BigDecimal getSalary() {
        return salary;
    }

    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public LocalDateTime getRegistrationTime() {
        return registrationTime;
    }

    public void setRegistrationTime(LocalDateTime registrationTime) {
        this.registrationTime = registrationTime;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

//    Create toString of All Fields.
    @Override
    public String toString() {
        return "Student{" + "id="
                + id + ", name="
                + name + ", email="
                + email + ", age="
                + age + ", salary="
                + salary + ", dateOfBirth="
                + dateOfBirth + ", registrationTime="
                + registrationTime + ", gender="
                + gender + ", active="
                + active + ", description="
                + description + '}';
    }

}
