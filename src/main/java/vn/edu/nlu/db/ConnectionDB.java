package vn.edu.nlu.db;

import vn.edu.nlu.beans.ProductTest;
import vn.edu.nlu.filter.Data;
import vn.edu.nlu.profile.ProductTestEntity;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class ConnectionDB {
    static Connection con;

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if(con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"
                    + "test1?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.createStatement();
        }
        else{
            return con.createStatement();
        }
    }
    public static void main(String[] args ) throws Exception{
        ProductTestEntity pe= new ProductTestEntity();
        List<ProductTest> pt=new LinkedList<>();
        pt.addAll(Data.data.values());
        pe.insertProducts(pt);

//        Statement s= ConnectionDB.connect();
//        ResultSet rs= s.executeQuery("select * from user");
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//        while (rs.next()){
//            System.out.println(rs.getString(2));
//        }
    }
}
