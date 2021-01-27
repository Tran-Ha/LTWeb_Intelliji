package vn.edu.nlu.entities;

import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;

public class FavoriteEntity {

    public static void insertFavorite(int userId, int bookId) {
        String query = "insert into FAVORITE (ID_USER, ID_BOOK) values (?, ?) ";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, bookId);
            preparedStatement.executeUpdate();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    // run test
    public static void main(String[] args) {
        FavoriteEntity.insertFavorite(1, 2);
    }
}
