package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.entities.BookEntity;
import vn.edu.nlu.entities.FavoriteEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "favoriteBook", urlPatterns = "/favoriteBook")
public class favoriteBook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (session == null || user == null) {
            request.setAttribute("favoriteNotification", "Bạn chưa đăng nhập! Vui lòng đăng nhập để thực hiện chức năng này!");
        } else {
            String id = request.getParameter("id");
            Book book = BookEntity.getBookById(id);
            if (user != null && book != null) {
                request.setAttribute("book", book);
                FavoriteEntity.insertFavorite(user.getId(), book.getId());
            }
        }
        request.getRequestDispatcher("default?page=" + page).forward(request, response);
    }
}
