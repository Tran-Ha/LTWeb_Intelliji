package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Role;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleEntity {

    // methods
    public static Role getRoleByUser(User user) {
        Role role = null;
        String query = "select * from ROLE where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, user.getRole());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("NAME");
                role = new Role(id, name);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return role;
    }

    // run test
    public static void main(String[] args) {
        User user = new User();
        user.setRole(6);
        System.out.println(getRoleByUser(user));
    }

}
