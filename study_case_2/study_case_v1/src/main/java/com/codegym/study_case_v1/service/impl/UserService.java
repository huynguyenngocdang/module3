package com.codegym.study_case_v1.service.impl;

import com.codegym.study_case_v1.dao.IUserDAO;
import com.codegym.study_case_v1.dao.impl.UserDAO;
import com.codegym.study_case_v1.model.User;
import com.codegym.study_case_v1.service.IUserService;

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
