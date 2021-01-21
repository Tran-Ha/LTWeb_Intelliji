package vn.edu.nlu.entities;


import vn.edu.nlu.beans.Publication;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.Set;

public class PublicationEntities {
    public static Set<Publication> getAll() {
        Set<Publication> result = new LinkedHashSet<Publication>();
        String query = "select * from PUBLICATION ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("NAME_PUBLICATION");
                Publication pub = new Publication(id, name);
                result.add(pub);
            }
            return result;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    //load list popular publications
    public static Set<Publication> getPublications() {

        String sql = "select p.id , p.NAME_PUBLICATION\n" +
                "from publication p, book b\n" +
                "where p.ID=b.ID_PUBLICATION \n" +
                "GROUP BY p.id, p.NAME_PUBLICATION\n" +
                "having count(b.id)>20";
        Set<Publication> list = new LinkedHashSet<Publication>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Publication pub = new Publication();
                pub.setId(rs.getInt(1));
                pub.setName(rs.getString(2));
                list.add(pub);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {

        System.out.println(getPublications());
    }
}
