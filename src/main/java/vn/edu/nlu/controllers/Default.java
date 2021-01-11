package vn.edu.nlu.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Default", urlPatterns = "/default")
public class Default extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");

        if (page == null || page.equals("home")) {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }

        if (page.equals("login")) {
            request.getRequestDispatcher("login_signup.jsp").forward(request, response);
        }

        if (page.equals("cart")) {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        }

        if (page.equals("forgetPassword")) {
            request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
        }

        if (page.equals("productDetail")) {
            request.getRequestDispatcher("product-details.jsp").forward(request, response);
        }
    }
}
