package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.*;
import vn.edu.nlu.entities.BillEntity;
import vn.edu.nlu.entities.Bill_DetailEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

@WebServlet(name = "CheckOut", urlPatterns = "/checkout")
public class CheckOut extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getParameter("address");
        String cityId = request.getParameter("cityId");
        String phone = request.getParameter("phone");
        String fee_ship = request.getParameter("fee_ship");
        String payment = request.getParameter("payment");
        String note = request.getParameter("comment");

        HttpSession s = request.getSession();
        Cart cart = (Cart) s.getAttribute("cart");
        User user = (User) s.getAttribute("user");

        Map<Book, Integer> listBuy = cart.getBookMap();

        long id = BillEntity.getTotalBill() + 1;
        int id_user = user.getId();
        int id_shipment = Integer.parseInt(fee_ship);
        int id_payment = Integer.parseInt(payment);
        int id_city = Integer.parseInt(cityId);
        Date createdDate = new Date();

        Bill bill = new Bill(id, id_user, 1, id_shipment, id_payment, address, id_city, note, createdDate, phone);

        BillEntity.addBill(bill);

        for (Map.Entry<Book, Integer> entry : listBuy.entrySet()) {
            long id_bd = Bill_DetailEntity.getTotalBillDetail() + 1;
            int id_book = entry.getKey().getId();
            Bill_Detail bill_detail = new Bill_Detail(id_bd, id, id_book, entry.getValue());

            Bill_DetailEntity.addBill_Detail(bill_detail);
        }

        s.removeAttribute("cart");
        s.setAttribute("cart", new Cart());

        response.sendRedirect("checkout.jsp");
    }
}
