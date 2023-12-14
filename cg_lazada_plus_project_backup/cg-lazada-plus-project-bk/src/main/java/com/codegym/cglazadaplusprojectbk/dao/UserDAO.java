package com.codegym.cglazadaplusprojectbk.dao;

import com.codegym.cglazadaplusprojectbk.constant.Query;
import com.codegym.cglazadaplusprojectbk.model.User;
import com.codegym.cglazadaplusprojectbk.utils.JDBCConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {

    @Override
    public List<User> getAllUser() {
        List<User> users = new ArrayList<>();
        try {
            Connection connection = JDBCConnection.getConnection();
            PreparedStatement preparedStatement =connection.prepareStatement(Query.get_all_user);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt("user_id");
                String username = resultSet.getString("user_name");
                String userPassword = resultSet.getString("user_password");
                int userRoleId = resultSet.getInt("user_role_id");
                boolean isActive = resultSet.getBoolean("is_active");
                boolean isDelete = resultSet.getBoolean("is_delete");
                users.add(new User(userId, username, userPassword, userRoleId, isActive, isDelete));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}
