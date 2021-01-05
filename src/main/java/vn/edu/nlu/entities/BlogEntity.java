package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

public class BlogEntity {

    public static Set<Blog> getAll() {
        Set<Blog> result = new LinkedHashSet<Blog>();
        String query = "select * from BLOG";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String title = resultSet.getString("TITLE");
                String img = resultSet.getString("IMG");
                int idWriter = resultSet.getInt("ID_WRITER");
                Date writeDate = resultSet.getDate("WRITE_DATE");
                String content = resultSet.getString("ABSTRACT");

                Blog blog = new Blog(id, title, img, idWriter, writeDate, content);
                result.add(blog);
            }
            return result;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
