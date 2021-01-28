package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Contact;
import vn.edu.nlu.entities.ContactEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ReceiveContact", urlPatterns = "/ReceiveContact")
public class ReceiveContact extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        int rs=0;
        if(email!=null&&name!=null&&subject!=null&&message!=null){
            int id= ContactEntity.getTotalContact()+1;
            String status="Chưa xử lí";
            Contact c= new Contact(id, subject,message,name,email, status,null);
            rs=ContactEntity.addContact(c);
        }
        if(rs>0){
            request.setAttribute("msgCont", "Góp ý của bạn đã được gửi đi.");
        }
        else
            request.setAttribute("msgCont", "Góp ý của bạn đã xảy ra lỗi. Mời bạn nhập lại");

        request.getRequestDispatcher("contact.jsp").forward(request,response);
    }
}
