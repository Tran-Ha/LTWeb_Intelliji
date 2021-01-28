package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Role;
import vn.edu.nlu.database.ConnectionDB;
import vn.edu.nlu.utils.Encryption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "AjaxSignup", urlPatterns = "/ajaxSignup")
public class AjaxSignup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // set up response
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter printWriter = response.getWriter();
        // processing
        String name = request.getParameter("fullName");
        String phone = request.getParameter("mobile");
        String email = request.getParameter("signupEmail");
        String city = request.getParameter("cityId");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String password = request.getParameter("pwd");
        String rePassword = request.getParameter("rePassword");

        try {
            String sql = "select * from USER where email = '" + email + "'";

            PreparedStatement statement = ConnectionDB.connect(sql);
            ResultSet rsCounter = statement.executeQuery("select count(*) from user;".toUpperCase());
            rsCounter.next();
            int newID = rsCounter.getInt(1) + 1;

            ResultSet rs = statement.executeQuery(sql);
            rs.last();
            int i = rs.getRow();
            if (i != 0) {
                printWriter.println("Email đã được sử dụng!");
            } else if (!password.equals(rePassword)) {
                printWriter.println("Mật khẩu xác nhận không khớp!");
            } else {
                String insertSql = "insert into user (id, name, password, phone, email, city, address, birthday, active, id_role) values ".toUpperCase() +
                        "(" + newID + ",'" + name + "', '" + Encryption.encrypt(password) + "', '" + phone + "','" + email + "','" + city + "','" + address + "'," + birthday + "'," + 1 + ", 1 );";
                System.out.println(insertSql);
                statement.executeUpdate(insertSql);
                printWriter.println("default?page=home");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            printWriter.println("Thông tin đăng nhập không đúng! Vui lòng nhập lại!");
        }
    }
}
