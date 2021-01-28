package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Bill;
import vn.edu.nlu.database.ConnectionDB;
import vn.edu.nlu.utils.TypeStatus;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashSet;
import java.util.Set;

public class BillEntity {
    public static Set<Bill> getAll() {
        Set<Bill> result = new LinkedHashSet<Bill>();
        String query = "select * from BILL ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {

                Bill bill = new Bill();
                bill.setId(rs.getLong("ID"));
                bill.setCreatedDate(rs.getDate("CREATED_DATE"));
                bill.setStatus(TypeStatus.getIndex(rs.getString("STATUS")));
                result.add(bill);
            }
            return result;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static long getTotalBill() {
        long total=0;
        String query = "select count(*) from BILL ";
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
    public static String getTotalPriceBill(long id) {
        long totalBill=0;
        String query = "SELECT sum(bd.QUANTITY*sp.PRICESALE) FROM bill b join bill_detail bd on b.ID =bd.ID_BILL join book sp on sp.ID=bd.ID_BOOK ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                totalBill=rs.getLong(1);
            }
            return new DecimalFormat().format(totalBill);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int addBill(Bill b) {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();

        String query = "insert into bill values("+b.getId()+","+
                b.getId_user()+", \'"+TypeStatus.getMap().get(b.getStatus())+"\' ,"+
                b.getId_shipment()+","+b.getId_payment()+", \'"+b.getAddress()+"\' ,"+
                b.getCity()+", \'"+b.getNote()+"\' , \'"+dtf.format(now)+"\' , \'"+b.getPhone()+
        "\' );";
        try {
            PreparedStatement ps = ConnectionDB.connect(query);
            return ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static void main(String[] args) {
        Bill b=new Bill(3,0, 1, 0,0, "nullgfh",0, "null", null, "null");

        addBill(b);
        System.out.println(getAll());
    }
}
