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

    public static String createRandomString(int length) {
        String result = "";
        Random random = new Random();

        int counter = 0;
        while (counter < length) {
            int randomNumber = 48 + random.nextInt(74);
            if (48 <= randomNumber && randomNumber <= 57) {
                result += randomNumber;
                counter += 1;
            }
            if (65 <= randomNumber && randomNumber <= 90) {
                result += (char) randomNumber;
                counter += 1;
            }
            if (97 <= randomNumber && randomNumber <= 122) {
                result += (char) randomNumber;
                counter += 1;
            }
        }
        return result;
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
        String query = "select ID from USER where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String name = resultSet.getString("NAME");
                String email = resultSet.getString("NAME");
                String phone = resultSet.getString("NAME");
                String password = resultSet.getString("NAME");
                String address = resultSet.getString("NAME");
                String city = resultSet.getString("NAME");
                String img = resultSet.getString("NAME");
                Date birthday = resultSet.getDate("NAME");
                boolean active = resultSet.getBoolean("NAME");
                boolean isAdmin = resultSet.getBoolean("NAME");
                user = new User(id, name, email, phone, password, address, city, img, birthday, active, isAdmin);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // run test
    public static void main(String[] args) {
//        System.out.println(UserEntity.getIdByEmail("tanphatle@gmail.com"));
//        System.out.println(UserEntity.getIdByKey("this is random key!!! huhu"));
//        System.out.println(UserEntity.setCurrentTimeById(1));
//        System.out.println(UserEntity.checkTimeById(1, 120 * 60 * 1000));
//        System.out.println(UserEntity.createRandomString(120));
//        System.out.println(UserEntity.setKeyById(1, "this is random key!!! huhu"));
        System.out.println(UserEntity.getIdByEmail("letanphat857@gmail.com"));
    }
}
