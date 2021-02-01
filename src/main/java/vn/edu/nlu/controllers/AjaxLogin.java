package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.beans.Role;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.entities.RoleEntity;
import vn.edu.nlu.entities.UserEntity;
import vn.edu.nlu.utils.Encryption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AjaxLogin", urlPatterns = "/ajaxLogin")
public class AjaxLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // set up response
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter printWriter = response.getWriter();
        // get loginEmail and loginPassword
        String loginEmail = request.getParameter("loginEmail");
        String loginPassword = request.getParameter("loginPassword");
        User user = UserEntity.getUserByEmailAndPassword(loginEmail, String.valueOf(Encryption.encrypt(loginPassword)));
        // processing
        if (user == null) {
            printWriter.println("Error");
        } else {
            Role role = RoleEntity.getRoleByUser(user);

            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            session.setAttribute("cart", new Cart());
            session.setAttribute("role", role);

            if (role == null || role.getId() == 6) {
                printWriter.println("default?page=home");
            } else {
                printWriter.println("default?page=adminHome");
            }
        }
    }
}
