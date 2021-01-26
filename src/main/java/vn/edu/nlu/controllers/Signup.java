package vn.edu.nlu.controllers;

import vn.edu.nlu.database.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Signup", urlPatterns = "/Signup")
public class Signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("fullName");
        String phone = request.getParameter("mobile");
        String email = request.getParameter("email");
        String city = request.getParameter("cityID");
        String address = request.getParameter("address");
        String password = request.getParameter("pwd");
        String rePassword = request.getParameter("rePassword");

        String sql = "select * from user where email = '" + email + "'";

        try {
            PreparedStatement statement = ConnectionDB.connect(sql);
            ResultSet rsCounter = statement.executeQuery("select count(*) from user;");
            rsCounter.next();
            int newID = rsCounter.getInt(1) + 1;

            ResultSet rs = statement.executeQuery(sql);
            rs.last();
            int i = rs.getRow();
            if (i != 0) {
                request.setAttribute("err", "email ton tai");
                response.sendRedirect("login.jsp");
            } else if (!password.equals(rePassword)) {
                request.setAttribute("err", "mat khau xac nhan khong chinh xac");
                response.sendRedirect("login.jsp");
            } else {
                String insertSql = "insert into user (id, name, password, phone, email, city, address, active) values " +
                        "(" + newID + ",'" + name + "', '" + password + "', '" + phone + "','" + email + "','" + city + "','" + address + "'," + 1 + ");";
                System.out.println(insertSql);
                statement.executeUpdate(insertSql);
                request.setAttribute("", "dang ky thanh cong");
                response.sendRedirect("login.jsp");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
