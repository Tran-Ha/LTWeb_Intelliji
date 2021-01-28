package vn.edu.nlu.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Default", urlPatterns = "/default")
public class Default extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");

        switch (page) {
            case "home":
                request.getRequestDispatcher("home.jsp").forward(request, response);
                break;
            case "login":
                request.getRequestDispatcher("ajaxLoginAndSignup.jsp").forward(request, response);
                break;
            case "forgetPassword":
                request.getRequestDispatcher("forgetPassword.jsp").forward(request, response);
                break;
            case "productDetail":
                request.getRequestDispatcher("detailProduct").forward(request, response);
                break;
            case "cart":
                request.getRequestDispatcher("cart.jsp").forward(request, response);
                break;
            case "checkout":
                request.getRequestDispatcher("checkout.jsp").forward(request, response);
                break;
            case "searchResult":
                request.getRequestDispatcher("result.jsp").forward(request, response);
                break;
            case "account":
                request.getRequestDispatcher("my-account.jsp").forward(request, response);
                break;
            case "contact":
                request.getRequestDispatcher("contact.jsp").forward(request, response);
                break;
            case "adminHome":
                request.getRequestDispatcher("adminJSP/home.jsp").forward(request, response);
                break;
            case "adminNews":
                request.getRequestDispatcher("adminJSP/news.jsp").forward(request, response);
                break;
            case "adminOrders":
                request.getRequestDispatcher("adminJSP/order.jsp").forward(request, response);
                break;
            case "adminMembers":
                request.getRequestDispatcher("adminJSP/member.jsp").forward(request, response);
                break;
            case "adminProducts":
                request.getRequestDispatcher("adminJSP/product.jsp").forward(request, response);
                break;
            case "adminCreateNew":
                request.getRequestDispatcher("adminJSP/createNews.jsp").forward(request, response);
                break;
            case "adminCreateOrder":
                request.getRequestDispatcher("adminJSP/createOrder.jsp").forward(request, response);
                break;
            case "adminCreateMember":
                request.getRequestDispatcher("adminJSP/createMember.jsp").forward(request, response);
                break;
            case "adminCreateProduct":
                request.getRequestDispatcher("adminJSP/createProduct.jsp").forward(request, response);
                break;
            case "adminOrderMember":
                request.getRequestDispatcher("adminJSP/orderMember.jsp").forward(request, response);
                break;
            case "adminOderDetail":
                request.getRequestDispatcher("adminJSP/orderDetail.jsp").forward(request, response);
                break;
            default:
                response.getWriter().println("404 File not found!");
        }
    }
}
