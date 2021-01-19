package vn.edu.nlu.entities;

import vn.edu.nlu.beans.TypeLanguage;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
    //load list language book by id
    public static Set<TypeLanguage> getLanguages(int id_lang) {

        String sql = "select * from TypeLanguage where id=?";
        Set<TypeLanguage> list = new LinkedHashSet<TypeLanguage>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_lang);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                TypeLanguage lang = new TypeLanguage();
                lang.setId(rs.getInt(1));
                lang.setName(rs.getString(2));
                list.add(lang);
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
