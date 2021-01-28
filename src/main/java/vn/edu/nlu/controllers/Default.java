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

        switch (page) {
            case "home":
                request.getRequestDispatcher("home.jsp").forward(request, response);
                break;
            case "login":
                request.getRequestDispatcher("ajaxLoginAndSignup.jsp").forward(request, response);
                break;
            case "forgetPassword":
                request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
                break;
            case "productDetail":
                request.getRequestDispatcher("detailProduct").forward(request, response);
                break;
            case "cart":
                request.getRequestDispatcher("cart.jsp").forward(request, response);
                break;
            case "adminHome":
                request.getRequestDispatcher("adminJSP/home.jsp").forward(request, response);
                break;
            case "CheckOut":
                request.getRequestDispatcher("checkout.jsp").forward(request, response);
                break;
            case "MyAccount":
                request.getRequestDispatcher("my_account.jsp").forward(request, response);
                break;
            default:
                response.getWriter().println("404 File not found!");
        }
    }
}
