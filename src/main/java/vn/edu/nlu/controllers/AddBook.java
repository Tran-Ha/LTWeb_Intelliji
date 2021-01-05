package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.entities.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddBook", urlPatterns = "/addBook")
public class AddBook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Book book = BookEntity.getBookById(id);

        if (book != null){
            Cart cart = (Cart) request.getSession().getAttribute("cart");
            cart.addBook(book);
        }
    }
}
