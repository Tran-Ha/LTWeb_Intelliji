package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Contact;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ContactEntity {
    public static int addContact(Contact c) {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();

        String query = "insert into contact values("+c.getId()+",\'"+
                c.getTitle()+"\', \'"+ c.getContent()+"\' , \'"+
                c.getSender_name()+"\',\'"+c.getEmail()+"\', \'"+c.getStatus_process()+"\' , \'"+dtf.format(now)+
                "\' );";
        System.out.println(query);
        try {
            PreparedStatement ps = ConnectionDB.connect(query);
            return ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }}
    public static int getTotalContact() {
        int total=0;
        String query = "select count(*) from contact ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                total=rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }
    public static void main(String[] args) {
        Contact c= new Contact(1,"Phàn nàn",
                "Thời gian nhận sách không rõ ràng","Chu Bat","Chu@gmail.com","chưa xử lí", null);
        System.out.println(addContact(c));
    }
}
