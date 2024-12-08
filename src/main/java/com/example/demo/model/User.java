package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "signin")  // Keep this as your table name or change it if needed
public class User {

    @Id
    @Column(name = "username", nullable = false, unique = true)
    private String username;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "mobile", nullable = false, unique = true)
    private String mobile;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    // Default constructor
    public User() {}

    // Parameterized constructor
    public User(String username, String password, String mobile, String email) {
        this.username = username;
        this.password = password;
        this.mobile = mobile;
        this.email = email;
    }

    // Getters and setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User [username=" + username + ", password=" + password + ", mobile=" + mobile + ", email=" + email + "]";
    }
}
