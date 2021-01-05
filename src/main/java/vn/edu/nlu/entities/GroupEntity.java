package vn.edu.nlu.entities;

import vn.edu.nlu.beans.GroupBook;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class GroupEntity {

    public static Set<GroupBook> getAll() {
        Set<GroupBook> result = new LinkedHashSet<GroupBook>();
        String query = "select * from GROUP_BOOK";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("NAME");
                int langId = resultSet.getInt("ID_LANGUAGE");
                GroupBook group = new GroupBook(id, name, langId);
                result.add(group);
            }
            return result;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // run test
    public static void main(String[] args) {
        System.out.println(getAll());
    }
}
