package com.example.usermanagement.controller;

import com.example.usermanagement.dao.IUserDAO;
import com.example.usermanagement.dao.UserDAO;
import com.example.usermanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name="UserServletController", urlPatterns = "/users")
public class UserServletController extends HttpServlet {
    private IUserDAO userDAO;
    public void init() {
        userDAO = new UserDAO();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }

        switch (action) {
            case "edit":
                displayEditForm(request, response);
                break;
            default:
                displayUserList(request, response);
                break;
        }
    }
    private void displayUserList(HttpServletRequest request, HttpServletResponse response)
    {
        List<User> users = userDAO.selectAllUser();
        request.setAttribute("userList", users);
        RequestDispatcher dispatcher;
        try {
            dispatcher = request.getRequestDispatcher("/view/user/list.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    private void displayEditForm(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
