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

@WebServlet(name = "UpdateCart", urlPatterns = "/updateCart")
public class UpdateCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get parameter from request
        String page = request.getParameter("page");
        // get cart from session
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        // processing
        if (page != null) {
            if (cart != null) {
                for (Book book: cart.getBooks()) {
                    Book bookEntity = BookEntity.getBookById(book.getId());
                    if (bookEntity == null) {
                        cart.deleteBook(book);
                    }

                    if (book.getQuantity() > bookEntity.getQuantity()) {
                        book.setQuantity(bookEntity.getQuantity());
                    }
                }
            }

            if (cart == null) {
                request.getSession(true).setAttribute("cartNotification", "Bạn chưa đăng nhập! Vui lòng đăng nhập hoặc đăng kí để mua hàng!");
            } else {
                request.getSession(true).setAttribute("cartNotification", "Giỏ hàng của bạn đã được cập nhật!");
            }

            response.sendRedirect(page);
        }
    }
}
