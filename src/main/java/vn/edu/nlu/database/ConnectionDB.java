package vn.edu.nlu.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectionDB {
    static Connection con;

    public static PreparedStatement connect(String sql) throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"
                    + "ZoeDatabase?useUnicode=true&characterEncoding=utf-8", "root", "");
        }
        return con.prepareStatement(sql);
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect("select * from USER");
    }
}
