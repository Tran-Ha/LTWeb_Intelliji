package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.utils.Converter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AjaxAddBookQuantity", urlPatterns = "/ajaxAddBookQuantity")
public class AjaxAddBookQuantity extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Converter.convertStringToInt(request.getParameter("id"));
        Cart cart = (Cart) request.getSession().getAttribute("cart");

        if (cart != null && cart.containBookById(id)) {
            int quantity = Converter.convertStringToInt(request.getParameter("quantity"));
            int newQuantity = cart.getQuantityById(id) + quantity;
            request.setAttribute("quantity", newQuantity);
        }

        request.getRequestDispatcher("ajaxUpdateBookQuantity").forward(request, response);
    }
}
