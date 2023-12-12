package com.example.demo.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    private static final  String jdbcUrl = "jdbc:mysql://localhost:3306/cg_lazada_plus_project";
    private static final  String jdbcUsername = "root";
    private static final  String jdbcPassword = "123456";
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch ( SQLException e) {
            throw new RuntimeException(e);
        }

        return  connection;
    }
}
