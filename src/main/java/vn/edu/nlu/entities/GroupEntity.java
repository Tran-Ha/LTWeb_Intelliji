package vn.edu.nlu.entities;

import vn.edu.nlu.beans.GroupBook;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
    //load list group book by id
    public static Set<GroupBook> getGroups(int id_group) {

        String sql = "select * from group_book where id=?";
        Set<GroupBook> list = new LinkedHashSet<GroupBook>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_group);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                GroupBook group = new GroupBook();
                group.setId(rs.getInt(1));
                group.setName(rs.getString(2));
                group.setId_language(rs.getInt(3));
                list.add(group);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // run test
    public static void main(String[] args) {
        System.out.println(getAll());
    }
}
