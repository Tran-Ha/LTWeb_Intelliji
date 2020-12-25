package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.entities.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "InterestedBook", urlPatterns = "/InterestedBook")
public class InterestedBook extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookEntity bookEntity = new BookEntity();
        List<Book> newBooks = bookEntity.getNewBook();
        List<Book> hotBooks = bookEntity.getHotBook();
        List<Book> promotionBooks = bookEntity.getPromotionBook();
        List<Book> bestSellerBooks = bookEntity.getBestSellerBook();

        request.setAttribute("newBooks", newBooks);
        request.setAttribute("hotBooks", hotBooks);
        request.setAttribute("promotionBooks", promotionBooks);
        request.setAttribute("bestSellerBooks", bestSellerBooks);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }
}

