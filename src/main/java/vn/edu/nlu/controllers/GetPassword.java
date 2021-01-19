package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.entities.RoleEntity;
import vn.edu.nlu.entities.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "GetPassword", urlPatterns = "/getPassword")
public class GetPassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String randomKey = request.getParameter("key");
        User user = UserEntity.getUserByKey(randomKey);
        if (UserEntity.checkTimeById(user.getId(), 30*60*1000)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("cart", new Cart());
            session.setAttribute("role", RoleEntity.getRoleByUser(user));
            session.setAttribute("user", user);
            response.sendRedirect("my-account.jsp");
        } else {
            response.sendRedirect("login_signup.jsp");
        }
    }
}
