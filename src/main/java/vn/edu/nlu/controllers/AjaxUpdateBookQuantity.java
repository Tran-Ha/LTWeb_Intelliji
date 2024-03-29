package vn.edu.nlu.controllers;

import com.google.gson.Gson;
import vn.edu.nlu.beans.Book;
import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.entities.BookEntity;
import vn.edu.nlu.utils.Converter;
import vn.edu.nlu.utils.JsonCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

@WebServlet(name = "AjaxUpdateBookQuantity", urlPatterns = "/ajaxUpdateBookQuantity")
public class AjaxUpdateBookQuantity extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // set up response
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter printWriter = response.getWriter();
        // get parameter from request
        String id = request.getParameter("id");
        // get quantity from request (addBookQuantity)
        Integer quantity = (Integer) request.getAttribute("quantity");
        if (quantity == null) {
            quantity = Converter.convertStringToInt(request.getParameter("quantity"));
            request.removeAttribute("quantity");
        }
        // get book from database
        Book book = BookEntity.getBookById(id);
        // get cart from session
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        // processing
        JsonCart jsonCart = new JsonCart(null, "Bạn chưa đăng nhập! Vui lòng đăng nhập hoặc đăng kí để mua hàng!");

        if (cart != null) {
            int quantityOnDB = BookEntity.getQuantityByBook(book);

            if (quantity < 0) {
                jsonCart.setNotification("Số lượng sách là một số nguyên không âm! Vui lòng nhập lại!");
            }

            if (book == null || quantity == 0) {
                cart.deleteBook(book);
                jsonCart.setNotification("Một đầu sách đã được loại bỏ khỏi giỏ hàng của bạn!");
            }

            if (0 < quantity && quantity <= quantityOnDB) {
                cart.updateBook(book, quantity);
                jsonCart.setNotification("Giỏ hàng của bạn đã được cập nhật!");
            }

            if (quantity > quantityOnDB) {
                cart.updateBook(book, quantityOnDB);
                jsonCart.setNotification("Bạn đã chọn mua số lượng sách tối đa!");
            }

            jsonCart.setBooks(cart.getBooksJson());
        }

        if (cart == null) {
            jsonCart.setNotification("Bạn chưa đăng nhập! Vui lòng đăng nhập hoặc đăng kí để mua hàng!");
        }

        String resString = new Gson().toJson(jsonCart);
        printWriter.print(resString);
    }
}
