package vn.edu.nlu.controllers;

import com.google.gson.Gson;
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
        // get quantity from request (addBookQuantity)
        Integer quantity = (Integer) request.getAttribute("quantity");
        if (quantity == null) {
            quantity = Converter.convertStringToInt(request.getParameter("quantity"));
            request.removeAttribute("quantity");
        }
        // get book from database
        Book book = BookEntity.getBookById(id);
        int quantityOnDB = book.getQuantity();
        // get cart from session
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        // processing
        if (page != null) {
            if (cart != null) {
                if (quantity < 0) {
                    request.setAttribute("cartNotification", "Số lượng sách là một số nguyên không âm! Vui lòng nhập lại!");
                }

                if (book == null || quantity == 0) {
                    cart.deleteBook(book);
                    request.setAttribute("cartNotification", "Một đầu sách đã được loại bỏ khỏi giỏ hàng của bạn!");
                }

                if (0 < quantity && quantity <= quantityOnDB) {
                    cart.updateBook(book, quantity);
                    request.setAttribute("cartNotification", "Giỏ hàng của bạn đã được cập nhật!");
                }

                if (quantity > quantityOnDB) {
                    cart.updateBook(book, quantityOnDB);
                    request.setAttribute("cartNotification", "Bạn đã chọn mua số lượng sách tối đa!");
                }
            }

            if (cart == null) {
                request.setAttribute("cartNotification", "Bạn chưa đăng nhập! Vui lòng đăng nhập hoặc đăng kí để mua hàng!");
            }

            request.getRequestDispatcher("default?page=" + page).forward(request, response);
        }
    }
}
