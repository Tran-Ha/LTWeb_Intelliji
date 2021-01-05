package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class CategoryEntity {

    public static Set<Categories> getAll() {
        Set<Categories> result = new LinkedHashSet<Categories>();
        String query = "select * from CATEGORIES";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String cate = resultSet.getString("NAME");
                int groupId = resultSet.getInt("ID_GROUP");
                Categories category = new Categories(id, cate, groupId);
                result.add(category);
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
