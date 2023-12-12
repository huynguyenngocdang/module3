package com.example.usermanagement.utils;

import com.example.usermanagement.constant.Constant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(Constant.SQLDRIVER);
            connection = DriverManager.getConnection(Constant.JDBCURL, Constant.JDBCUSERNAME, Constant.JDBCPASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
