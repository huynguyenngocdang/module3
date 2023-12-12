package com.codegym.study_case_v1.dao;

import com.codegym.study_case_v1.model.User;

import java.util.List;

public interface IUserDAO {
    List<User> getAllUser();
    User getOneUser(int userId);
    boolean addNewUser(User user);
    boolean editUser(User user);
    boolean removeUser(int userId);

}
