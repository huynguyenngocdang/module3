package com.example.demo.service;


import com.example.demo.model.User;

import java.util.List;

public interface IUserService {
    List<User> getAllUser();
    User getOneUser(int userId);
    boolean addNewUser(User user);
    boolean editUser(User user);
    boolean removeUser(int userId);

}
