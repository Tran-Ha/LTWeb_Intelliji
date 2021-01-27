package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.entities.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DetailProduct", urlPatterns = "/detailProduct")
public class DetailProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Book book = BookEntity.getBookById(id);
        if (book != null) {
            request.setAttribute("book", book);
//            request.getRequestDispatcher("ajaxProductDetail.jsp").forward(request, response);
            request.getRequestDispatcher("product-details.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("default?page=home").forward(request, response);
        }
    }
}
