package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.User;
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
import java.sql.Statement;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.database.ConnectionDB;

@WebServlet(name = "Login", urlPatterns = "/Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("username");
        String password = request.getParameter("password");

        String sql = "select * from user where email = '" + email + "' and password ='" + password + "' and active = 1";
        ResultSet rs = null;
    //    ID, NAME, EMAIL, PHONE, PASSWORD, ADDRESS, CITY, IMG, BIRTHDAY, ACTIVE, ISADMIN, ID_CART
        try {
            PreparedStatement statement = ConnectionDB.connect(sql);
            rs = statement.executeQuery();
            rs.last();
            int i = rs.getRow();
            if(rs != null && i==1) {
                rs.first();
                User user = new User();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setPhone(rs.getString(4));
                user.setPassword(rs.getString(5));
                user.setAddress(rs.getString(6));
                user.setCity(rs.getString(7));
                user.setImg(rs.getString(8));
                user.setBirthday(rs.getDate(9));
                user.setActive(rs.getBoolean(10));
                user.setAdmin(rs.getBoolean(11));

                System.out.println("run");
            //    HttpSession session = request.getSession();
            //    session.setAttribute("user", user);
                if (user.isAdmin()){
                    response.sendRedirect("adminJSP/home.jsp");
                } else {
                    response.sendRedirect("home.jsp");
                }
            } else {
                System.out.println("run !!!");
                request.setAttribute("err", "Sai user name hoac password");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } catch (ClassNotFoundException | SQLException e ) {
            e.printStackTrace();
            System.out.println("Loi ket noi CSDL!");
            request.setAttribute("err","Sai user name hoac password");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
