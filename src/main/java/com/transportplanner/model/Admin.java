package com.transportplanner.model;

public class Admin {
    private int id;
    private String name;
    private String email;
    private String password;
    private String verificationKey; // Add this new field

    public Admin() {}

    public Admin(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    
    // Add these for verification key
    public String getVerificationKey() { return verificationKey; }
    public void setVerificationKey(String verificationKey) { 
        this.verificationKey = verificationKey; 
    }
}