package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.beans.Role;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.database.ConnectionDB;
import vn.edu.nlu.entities.RoleEntity;
import vn.edu.nlu.entities.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Login", urlPatterns = "/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = UserEntity.getUserByEmailAndPassword(email, password);
        if (user == null) {
            request.setAttribute("notification", "Sai thông tin đăng nhập! Vui lòng nhập lại!");
            request.getRequestDispatcher("login_signup.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            session.setAttribute("cart", new Cart());
            session.setAttribute("role", RoleEntity.getRoleByUser(user));
            response.sendRedirect("home.jsp");
        }
    }
}
