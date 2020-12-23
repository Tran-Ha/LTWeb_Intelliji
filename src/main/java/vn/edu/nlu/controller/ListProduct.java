package vn.edu.nlu.controller;

import vn.edu.nlu.beans.ProductTest;
import vn.edu.nlu.profile.ProductTestEntity;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ListProduct", urlPatterns = "/ListProduct")
public class ListProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductTestEntity pe= new ProductTestEntity();
        Collection<ProductTest> values= pe.getAllProduct();

        request.setAttribute("list", values);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
