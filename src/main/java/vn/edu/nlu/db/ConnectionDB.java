package vn.edu.nlu.db;

import java.sql.*;

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
        Statement s= ConnectionDB.connect();
        ResultSet rs= s.executeQuery("select * from user");
        rs.last();
        System.out.println(rs.getRow());
        rs.beforeFirst();
        while (rs.next()){
            System.out.println(rs.getString(2));
        }
    }
}
