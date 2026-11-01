package com.transportplanner.dao;

import java.sql.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import com.transportplanner.model.Admin;
import com.transportplanner.util.DBConnection;

public class AdminDAO {
    // Password hashing method (same as used in registration)
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(password.getBytes());
            byte[] digest = md.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Password hashing failed", e);
        }
    }

    public boolean registerAdmin(Admin admin) {
        String sql = "INSERT INTO admin (name, email, password, verification_key) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, admin.getName());
            stmt.setString(2, admin.getEmail());
            stmt.setString(3, hashPassword(admin.getPassword())); // Store hashed password
            stmt.setString(4, admin.getVerificationKey());
            
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Admin loginAdmin(String email, String password) {
        String sql = "SELECT * FROM admin WHERE email = ?";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, email);
            
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                // Get the stored hashed password from database
                String storedHash = rs.getString("password");
                // Hash the provided password for comparison
                String inputHash = hashPassword(password);
                
                // Compare hashes
                if (inputHash.equals(storedHash)) {
                    Admin admin = new Admin();
                    admin.setId(rs.getInt("id"));
                    admin.setName(rs.getString("name"));
                    admin.setEmail(rs.getString("email"));
                    return admin;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}