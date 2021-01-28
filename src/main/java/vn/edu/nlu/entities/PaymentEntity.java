package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Payment;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class PaymentEntity {
    public static Set<Payment> getPayments() {

        String sql="select * from payment";
        Set<Payment> list = new LinkedHashSet<Payment>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Payment pay = new Payment();
                pay.setId(rs.getInt("ID"));
                pay.setName(rs.getString("NAME"));
                pay.setStatus(rs.getString("STATUS"));
                list.add(pay);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        System.out.println(getPayments());
    }
}
