package com.example.demo.service.impl;


import com.example.demo.dao.IUserDAO;
import com.example.demo.dao.impl.UserDAO;
import com.example.demo.model.User;
import com.example.demo.service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    private IUserDAO userDAO = new UserDAO();
    @Override
    public List<User> getAllUser() {
        return userDAO.getAllUser();
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
