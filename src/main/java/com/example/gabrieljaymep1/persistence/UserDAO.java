package com.example.gabrieljaymep1.persistence;

import com.example.gabrieljaymep1.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    public User authenticateUser(String name, String password) {
        User user = null;
        String sql = "SELECT * FROM users WHERE name = ? AND password = MD5(?);";
        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, name);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("password"));
            }

            stmt.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return user;
    }

    public void insertUser(User user) {
        String sql = "INSERT INTO users(name, password) VALUES(?, MD5(?));";
        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getPassword());

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
