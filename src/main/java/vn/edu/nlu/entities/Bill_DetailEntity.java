package vn.edu.nlu.entities;
import vn.edu.nlu.beans.Bill_Detail;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class Bill_DetailEntity {
    public static Set<Bill_Detail> getAll() {
        Set<Bill_Detail> result = new LinkedHashSet<Bill_Detail>();
        String query = "select * from bill_detail ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {

                Bill_Detail bd = new Bill_Detail();
                bd.setId(rs.getLong("ID"));
                bd.setId_bill(rs.getLong("ID_BILL"));
                bd.setId_book(rs.getInt("ID_BOOK"));
                bd.setQuantity(rs.getInt("QUANTITY"));
                result.add(bd);
            }
            return result;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int addBill_Detail(Bill_Detail b) {
        String query = "insert into bill_detail values("+b.getId()+","+
                b.getId_bill()+","+b.getId_book()+","+
                b.getQuantity()+
                ");";
        try {
            PreparedStatement ps = ConnectionDB.connect(query);
            return  ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }
    public static long getTotalBillDetail() {
        long total=0;
        String query = "select count(*) from bill_detail ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                total=rs.getLong(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public static void main(String[] args) {
        Bill_Detail bd= new Bill_Detail(3,1, 1, 0);
        addBill_Detail(bd);
    }
}
