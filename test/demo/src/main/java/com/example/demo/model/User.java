package com.example.demo.model;

public class User {
    private int userId;
    private String username;
    private String userPassword;
    private int userRoleId;
    private int isActive;
    private int isDelete;

    public User(int userId, String username, String userPassword, int userRoleId, int isActive, int isDelete) {
        this.userId = userId;
        this.username = username;
        this.userPassword = userPassword;
        this.userRoleId = userRoleId;
        this.isActive = isActive;
        this.isDelete = isDelete;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(int userRoleId) {
        this.userRoleId = userRoleId;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }
}
