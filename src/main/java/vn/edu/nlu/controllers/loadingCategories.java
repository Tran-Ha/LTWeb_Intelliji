package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.entities.BookEntity;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "loadingCategories", urlPatterns = "/loadingCategories")
public class loadingCategories extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookEntity be = new BookEntity();
        ArrayList<Categories> values = be.getCategories();

        request.setAttribute("cats", values);
        request.getRequestDispatcher("Category.jsp").forward(request,response);
    }
}
