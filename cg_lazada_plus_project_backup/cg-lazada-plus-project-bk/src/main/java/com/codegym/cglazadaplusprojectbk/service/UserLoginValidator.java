package com.codegym.cglazadaplusprojectbk.service;

import com.codegym.cglazadaplusprojectbk.dao.IUserDAO;
import com.codegym.cglazadaplusprojectbk.dao.UserDAO;
import com.codegym.cglazadaplusprojectbk.model.User;

import java.util.List;

public class UserLoginValidator implements Validator{
    private String username;
    private String password;

    public UserLoginValidator(String username, String password) {
        this.username = username;
        this.password = password;
    }

    @Override
    public boolean isCheck() {
        IUserDAO userDAO = new UserDAO();
        List<User> users = userDAO.getAllUser();
        for (User user: users
             ) {
            if(user.getUsername().equals(username) && user.getUserPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }
}
