package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.MailSender;
import vn.edu.nlu.entities.UserEntity;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "ForgetPassword", urlPatterns = "/forgetPassword")
public class ForgetPassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userEmail = request.getParameter("email");
        System.out.println("email: " + userEmail);
        int idUser = UserEntity.getIdByEmail(userEmail);

        if (idUser == -1) {
            request.setAttribute("error", "Email không tồn tại!");
            request.getRequestDispatcher("/forgetPassword.jsp").forward(request, response);
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
            response.getWriter().println("<h2>Okay, We send mail!!!</h2>");
        }
    }
}
