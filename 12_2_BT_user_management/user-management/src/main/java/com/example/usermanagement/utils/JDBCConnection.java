package com.example.usermanagement.utils;

import com.example.usermanagement.constant.ConstantVariable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(ConstantVariable.JDBC_DRIVER);
            connection = DriverManager.getConnection(ConstantVariable.JDBC_URL, ConstantVariable.JDBC_USERNAME, ConstantVariable.JDBC_PASSWORD);
        } catch (SQLException  | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
