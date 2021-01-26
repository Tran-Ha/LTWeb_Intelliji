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

@WebServlet(name = "ADSearch", urlPatterns = "/ADSearch")
public class ADSearch extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txtSearch");
        String indexString = request.getParameter("index");
        int index = Integer.parseInt(indexString);

        int count = BookEntity.count(txtSearch);
        int pageSize = 10;
        int endPage = 0;
        endPage = count / pageSize;
        if (count / pageSize != 0) {
            endPage ++;
        }
        if (endPage == 0) {
            endPage = 1;
        }
        List<Book> listSearch = BookEntity.search(txtSearch, index, pageSize);
        request.setAttribute("end", endPage);
        request.setAttribute("list", listSearch);
        request.setAttribute("index", index);
        request.setAttribute("saveTxtSearch", txtSearch);
        request.getRequestDispatcher("adminJSP/search-result.jsp").forward(request, response);
    }
}
