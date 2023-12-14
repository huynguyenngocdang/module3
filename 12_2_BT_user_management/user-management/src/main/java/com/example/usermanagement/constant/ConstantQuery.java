package com.example.usermanagement.constant;

public interface ConstantQuery {
    String SELECT_ALL_USER = "select * from user";
    String SELECT_USER_BY_ID = "select * from user where id = ?";
}
