package vn.edu.nlu.profile;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.nlu.db.ConnectionDB;
import vn.edu.nlu.Model.User;

/**
 * Servlet implementation class login
 */
@WebServlet(name = "Login", urlPatterns = "/Login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todo(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todo(request, response);
    }

    private void todo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String sql = "Select * from user where uname='" + uname + "' and pass='" + pass + "' and active =1 ";
        ResultSet rs = null;
        try {
            rs = ConnectionDB.connect().executeQuery(sql);
            rs.last();
            int i = rs.getRow();
            if (rs != null && i == 1) {
                rs.first();
                User u= new User();
                u.setId(rs.getInt(1));
                u.setUname(rs.getString(2));
                u.setPass("");
                u.setIdGroup(rs.getInt(4));
                u.setActive(rs.getInt(5));
                HttpSession session = request.getSession();
                session.setAttribute("user", u);
                response.sendRedirect("index2.jsp");
            } else {
                request.setAttribute("err", "Sai Username hoặc mật khẩu");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch ( ClassNotFoundException | SQLException e ) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối tới CSDL");
            request.setAttribute("err", "Sai Username hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

}
