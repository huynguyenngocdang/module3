package com.example.usermanagement.dao;

import com.example.usermanagement.constant.ConstantQuery;
import com.example.usermanagement.model.User;
import com.example.usermanagement.utils.JDBCConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    @Override
    public List<User> selectAllUser() {
        List<User> users = new ArrayList<>();
        try {
            Connection connection = JDBCConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(ConstantQuery.SELECT_ALL_USER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                int is_delete = resultSet.getByte("is_delete");
                users.add(new User(userId, username, password, is_delete));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    @Override
    public User getUserById(int id) {
        User selectedUser = null;
        try {
            Connection connection = JDBCConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(ConstantQuery.SELECT_USER_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String username = resultSet.getString("username");
                String userPassword = resultSet.getString("password");
                int is_active = resultSet.getByte("is_active");
                selectedUser = new User(id, username, userPassword, is_active);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return selectedUser;
    }
}
