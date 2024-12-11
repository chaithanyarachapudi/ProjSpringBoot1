package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.User;
import com.example.demo.model.UserManager;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserManager userManager;

    @PostMapping("/register")
    public String register(@RequestBody User user) {
        return userManager.saveUser(user) ? "Registration Successful" : "Registration Failed - User already exists";
    }

    @PostMapping("/validate")
    public String validate(@RequestBody User user) {
        return userManager.userValidate(user);
    }
    
   
    @GetMapping("/user")
    public ResponseEntity<List<User>> getAllUsers() {
        return ResponseEntity.ok(userManager.getAllUsers());
    }
}
