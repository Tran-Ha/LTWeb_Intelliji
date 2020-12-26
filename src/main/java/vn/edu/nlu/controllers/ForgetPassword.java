package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.MailSender;
import vn.edu.nlu.entities.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ForgetPassword", urlPatterns = "/forgetPassword")
public class ForgetPassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userEmail = request.getParameter("email");
        int idUser = UserEntity.getIdByEmail(userEmail);

        if (UserEntity.checkTimeById(idUser, 30 * 60 * 1000)) {
            request.setAttribute("notification", "Vui lòng truy cập vào email của bạn để lấy lại mật khẩu!");
        } else if (idUser == -1) {
            request.setAttribute("notification", "Email không đúng! Vui lòng kiểm tra lại Email!");
        } else {
            // thêm thời gian vào user
            UserEntity.setCurrentTimeById(idUser);
            // tạo chuỗi ngẫu nhiên
            String randomKey = UserEntity.createRandomString(120);
            // thêm chuỗi ngẫu nhiên vào user
            UserEntity.setKeyById(idUser, randomKey);
            // tạo link
            String link = "http://localhost:8080/Zoe/getPassword?key=" + randomKey;
            // gửi mail
            MailSender.sendForgetPasswordMail(userEmail, link);
            // thông báo
            request.setAttribute("notification", "Vui lòng truy cập vào email của bạn để lấy lại mật khẩu!");
        }

        request.setAttribute("email", userEmail);
        request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
    }
}
