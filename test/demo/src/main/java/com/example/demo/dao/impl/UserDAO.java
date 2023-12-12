package com.example.demo.dao.impl;


import com.example.demo.dao.IUserDAO;
import com.example.demo.model.User;
import com.example.demo.utils.JDBCConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    private final  String SELECT_ALL_USER = "SELECT * FROM user";
    @Override
    public List<User> getAllUser() {
        List<User> users = new ArrayList<>();
        try {
            Connection connection = JDBCConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt("user_id");
                String username = resultSet.getString("username");
                String userPassword = resultSet.getString("user_password");
                int userRoleId = resultSet.getInt("user_role_id");
                int isActive = resultSet.getInt("is_active");
                int isDelete = resultSet.getInt("is_delete");
                users.add(new User(userId, username, userPassword, userRoleId,isActive, isDelete));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public User getOneUser(int userId) {
        return null;
    }

    @Override
    public boolean addNewUser(User user) {
        return false;
    }

    @Override
    public boolean editUser(User user) {
        return false;
    }

    @Override
    public boolean removeUser(int userId) {
        return false;
    }
}
