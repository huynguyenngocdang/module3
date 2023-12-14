package com.example.usermanagement.dao;

import com.example.usermanagement.model.User;

import java.util.List;

public interface IUserDAO {
    List<User> selectAllUser();
    User getUserById(int id);
}
