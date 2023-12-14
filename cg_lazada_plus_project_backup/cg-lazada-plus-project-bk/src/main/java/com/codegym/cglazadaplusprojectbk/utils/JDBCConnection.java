package com.codegym.cglazadaplusprojectbk.utils;

import com.codegym.cglazadaplusprojectbk.constant.Variable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(Variable.JDBC_DRIVER);
            connection = DriverManager.getConnection(Variable.JDBC_URL, Variable.JDBC_USER, Variable.JDBC_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
