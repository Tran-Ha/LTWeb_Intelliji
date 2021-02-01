package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.entities.RoleEntity;
import vn.edu.nlu.utils.TypeCity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MyAccount", urlPatterns = "/myAccount")
public class MyAccount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession();
        Cart cart = (Cart) s.getAttribute("cart");
        User user = (User) s.getAttribute("user");

        if (user == null) {
            request.getSession(true).setAttribute("loginNotification", "Sai thông tin đăng nhập! Vui lòng nhập lại!");
            response.sendRedirect("login_signup.jsp");
        } else {
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            session.setAttribute("cart", new Cart());
            session.setAttribute("role", RoleEntity.getRoleByUser(user));

            checkForm(request,response);

            request.getRequestDispatcher("my_account.jsp").forward(request,response);
        }
    }

    private void checkForm(HttpServletRequest request, HttpServletResponse response) {
        String new_address=request.getParameter("new_address");
        String new_cityId=request.getParameter("new_cityId");

        String current_pwd=request.getParameter("current_pwd");
        String new_pwd=request.getParameter("new_pwd");
        String confirm_pwd=request.getParameter("confirm_pwd");

        if(new_address!=null&& new_cityId!=null){
            repairAddress(request,response,new_address,new_cityId);
        }
        else
            request.setAttribute("msgAdd","Quá trình sửa địa chỉ đã xảy ra lỗi. Mời bạn vui lòng nhập lại.");


        if(current_pwd!=null&&new_pwd!=null&&confirm_pwd!=null){
            changePassword(request,response,current_pwd,new_pwd,confirm_pwd);
        }
        else
            request.setAttribute("msgPwd","Quá trình thay đổi mật khẩu đã xảy ra lỗi. Mời bạn vui lòng nhập lại.");

    }

    private void repairAddress(HttpServletRequest request, HttpServletResponse response, String new_address, String new_cityId) {
        HttpSession s = request.getSession();
        User user = (User) s.getAttribute("user");
        String new_city= TypeCity.getMap().get(Integer.parseInt(new_cityId));

        if((!user.getAddress().equals(new_address)||!user.getCity().equals(new_city))&&(new_city!=null)){
            user.setAddress(new_address);
            user.setCity(new_city);
            request.setAttribute("msgAdd","Bạn đã thay địa chỉ khẩu thành công");
        }
        else{
            request.setAttribute("msgAdd","Bạn địa chỉ của bạn không hợp lệ. Mời bạn vui lòng nhập lại");
        }
    }

    private void changePassword(HttpServletRequest request, HttpServletResponse response, String current_pwd, String new_pwd, String confirm_pwd) {
        HttpSession s = request.getSession();
        User user = (User) s.getAttribute("user");
        if(user.getPassword().equals(current_pwd)&&new_pwd.equals(confirm_pwd)){
            user.setPassword(new_pwd);
            request.setAttribute("msgPwd","Bạn đã thay đổi Mật khẩu thành công");
        }
        else{
            request.setAttribute("msgPwd","Mật khẩu của bạn không đúng. Vui lòng nhập lại.");
        }
    }


}
