package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Shipment;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class ShipmentEntity {
    public static Set<Shipment> getShipments() {

        String sql="select * from shipment";
        Set<Shipment> list = new LinkedHashSet<Shipment>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Shipment ship = new Shipment();
                ship.setId(rs.getInt("ID"));
                ship.setName(rs.getString("NAME"));
                ship.setFee(rs.getInt("FEES"));
                ship.setStatus(rs.getString("STATUS"));
                list.add(ship);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        System.out.println(getShipments());

    }
}
