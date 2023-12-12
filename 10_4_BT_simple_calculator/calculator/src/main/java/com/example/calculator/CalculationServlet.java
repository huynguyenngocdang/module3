package com.example.calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculationServlet", value = "/CalculationServlet")
public class CalculationServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user input from the form
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operation = request.getParameter("operation");

        try {
            double num1 = Double.parseDouble(num1Str);
            double num2 = Double.parseDouble(num2Str);
            double result = 0;

            // Perform the selected operation
            if (operation.equals("add")) {
                result = num1 + num2;
            } else if (operation.equals("subtract")) {
                result = num1 - num2;
            } else if (operation.equals("multiply")) {
                result = num1 * num2;
            } else if (operation.equals("divide")) {
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    response.getWriter().println("Error: Cannot divide by zero");
                    return;
                }
            }

            // Set the result in the request attributes
            request.setAttribute("result", result);

            // Forward the request to result.jsp

            request.getRequestDispatcher("result.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            response.getWriter().println("Error: Invalid input. Please enter valid numbers.");
        }
    }
}