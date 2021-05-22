package com.example.gabrieljaymep1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
    public static Connection initializeDataBase() throws ClassNotFoundException, SQLException {
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/p1_pw3_gabrielJayme";
        String dbUser = "root";
        String dbPassword = "root";

        Class.forName(dbDriver);
        Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        return connection;
    }
}
