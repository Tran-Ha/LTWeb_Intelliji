package vn.edu.nlu.entities;

import vn.edu.nlu.beans.User;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

public class UserEntity {

    public static int getIdByEmail(String userEmail) {
        return getId("EMAIL", userEmail);
    }

    public static int getIdByKey(String key) {
        return getId("RANDOM_KEY", key);
    }

    public static int getId(String field, String value) {
        int result = -1;
        String query = "select ID from USER where ACTIVE = 1 and " + field + " = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setString(1, value);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                result = resultSet.getInt("ID");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static boolean setCurrentTimeAndRandomKeyById(int id, String key) {
        if (setCurrentTimeById(id) && setKeyById(id, key)) {
            return true;
        }
        return false;
    }

    public static boolean setCurrentTimeById(int id) {
        String update = "update USER set CREATED_TIME = current_timestamp() where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(update);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static boolean setKeyById(int id, String key) {
        String update = "update USER set RANDOM_KEY = ? where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(update);
            preparedStatement.setString(1, key);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static boolean checkTimeById(int id, int time) {
        String query = "select CREATED_TIME from USER where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                Date createdTime = resultSet.getTimestamp("CREATED_TIME");
                Date currentTime = Calendar.getInstance().getTime();
                if (createdTime == null) {
                    return false;
                }
                if (currentTime.getTime() - createdTime.getTime() > time) {
                    return false;
                }
            } else {
                return false;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static User getUserById(int id) {
        User user = null;
        String query = "select * from USER where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String name = resultSet.getString("NAME");
                String email = resultSet.getString("EMAIL");
                String phone = resultSet.getString("PHONE");
                String password = resultSet.getString("PASSWORD");
                String address = resultSet.getString("ADDRESS");
                String city = resultSet.getString("CITY");
                String img = resultSet.getString("IMG");
                Date birthday = resultSet.getDate("BIRTHDAY");
                boolean active = resultSet.getBoolean("ACTIVE");
                int idRole = resultSet.getInt("ID_ROLE");
                user = new User(id, name, email, phone, password, address, city, img, birthday, active, idRole);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public static User getUserByKey(String randomKey) {
        User user = null;
        String query = "select * from USER where RANDOM_KEY = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setString(1, randomKey);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("NAME");
                String email = resultSet.getString("EMAIL");
                String phone = resultSet.getString("PHONE");
                String password = resultSet.getString("PASSWORD");
                String address = resultSet.getString("ADDRESS");
                String city = resultSet.getString("CITY");
                String img = resultSet.getString("IMG");
                Date birthday = resultSet.getDate("BIRTHDAY");
                boolean active = resultSet.getBoolean("ACTIVE");
                int idRole = resultSet.getInt("ID_ROLE");
                int reliability=resultSet.getInt("reliability");

                user = new User(id, name, email, phone, password, address, city, img, birthday, active, idRole,reliability);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public static User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        String query = "select * from USER where EMAIL = ? and PASSWORD = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String name = resultSet.getString("NAME");
                String phone = resultSet.getString("PHONE");
                String address = resultSet.getString("ADDRESS");
                String city = resultSet.getString("CITY");
                String img = resultSet.getString("IMG");
                Date birthday = resultSet.getDate("BIRTHDAY");
                boolean active = resultSet.getBoolean("ACTIVE");
                int idRole = resultSet.getInt("ID_ROLE");
                user = new User(id, name, email, phone, password, address, city, img, birthday, active, idRole);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    public static User getInfoContact(int id_role) {
        User info = null;
        String query = "select * from USER where id_role=?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, id_role);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                info= new User();
                info.setName(resultSet.getString("NAME"));
                info.setPhone(resultSet.getString("PHONE"));
                info.setAddress(resultSet.getString("ADDRESS"));
                info.setCity( resultSet.getString("CITY"));
                info.setEmail(resultSet.getString("EMAIL"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return info;
    }

    // run test
    public static void main(String[] args) {
//        System.out.println(UserEntity.getIdByEmail("tanphatle@gmail.com"));
//        System.out.println(UserEntity.getIdByKey("this is random key!!! huhu"));
//        System.out.println(UserEntity.setCurrentTimeById(1));
//        System.out.println(UserEntity.checkTimeById(1, 120 * 60 * 1000));
//        System.out.println(UserEntity.createRandomString(120));
//        System.out.println(UserEntity.setKeyById(1, "this is random key!!! huhu"));
//        System.out.println(UserEntity.getIdByEmail("letanphat857@gmail.com"));
//        System.out.println(getUserById(5));
    }
}
