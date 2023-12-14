package com.example.usermanagement.model;

public class User {
    private int userId;
    private String username;
    private String userPassword;
    private int is_delete;

    public User(int userId, String username, String userPassword, int is_delete) {
        this.userId = userId;
        this.username = username;
        this.userPassword = userPassword;
        this.is_delete = is_delete;
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

    public int getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(int is_delete) {
        this.is_delete = is_delete;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", is_delete=" + is_delete +
                '}';
    }
}
