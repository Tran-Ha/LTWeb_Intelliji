package vn.edu.nlu.database;

import java.sql.*;

public class ConnectionDB {
    static Connection connection;

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if(connection == null || connection.isClosed()){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + "ZoeDatabase?useUnicode=true&characterEncoding=utf-8", "root", "");
        }
        return connection.createStatement();
    }

}
