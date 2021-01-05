package vn.edu.nlu.entities;

import vn.edu.nlu.beans.TypeLanguage;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class LanguageEntity {

    public static Set<TypeLanguage> getAll() {
        Set<TypeLanguage> result = new LinkedHashSet<TypeLanguage>();
        String query = "select * from TYPELANGUAGE";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("NAME");
                TypeLanguage language = new TypeLanguage(id, name);
                result.add(language);
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
