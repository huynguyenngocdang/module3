package com.codegym.cglazadaplusprojectbk.model;

public class User {
    private int userId;
    private String username;
    private String userPassword;
    private int userRoleId;
    private boolean isActive;
    private boolean isDelete;

    public User(int userId, String username, String userPassword, int userRoleId, boolean isActive, boolean isDelete) {
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

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        this.isActive = active;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        this.isDelete = delete;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + userId +
                ", user_name='" + username + '\'' +
                ", user_password='" + userPassword + '\'' +
                ", user_role_id=" + userRoleId +
                ", is_active=" + isActive +
                ", is_delete=" + isDelete +
                '}';
    }
}
