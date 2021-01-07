package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.entities.BookEntity;
import vn.edu.nlu.utils.Converter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateBookQuantity", urlPatterns = "/updateBookQuantity")
public class UpdateBookQuantity extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get parameter from request
        String page = request.getParameter("page");
        String id = request.getParameter("id");
        int quantity = Converter.convertStringToInt(request.getParameter("quantity"));
        // get book from database
        Book book = BookEntity.getBookById(id);
        int quantityOnDB = book.getQuantity();
        // get cart from session
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        // processing
        if (page != null) {
            if (book != null && cart != null && quantity <= quantityOnDB) {
                if (quantity <= 0) {
                    cart.deleteBook(book);
                } else {
                    cart.updateBook(book, quantity);
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
