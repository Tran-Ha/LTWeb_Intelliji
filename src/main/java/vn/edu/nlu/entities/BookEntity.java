package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.beans.GroupBook;
import vn.edu.nlu.beans.TypeLanguage;
import vn.edu.nlu.database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;


public class BookEntity {

    public static Book getBookById(String id) {
        try {
            int idNumber = Integer.parseInt(id);
            return getBookById(idNumber);
        } catch (NumberFormatException exception) {
            return null;
        }
    }

    public static Book getBookById(int id) {
        Book book = new Book();
        String bookQuery = "select * from BOOK where ACTIVE = true and QUANTITY > 0 and ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(bookQuery);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                book.setId(id);
                book.setName(resultSet.getString("NAME"));
                book.setPrice(resultSet.getLong("PRICE"));
                book.setPriceSale(resultSet.getLong("PRICESALE"));
                book.setImgs(getImageLinksById(id));
                book.setAuthors(getAuthorsById(id));
                return book;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<String> getImageLinksById(int id) {
        ArrayList<String> result = new ArrayList<>();
        String imageQuery = "select IMAGE.LINK from IMAGE, BOOK where BOOK.ID = IMAGE.ID_BOOK and BOOK.ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(imageQuery);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                result.add(resultSet.getString("LINK"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Set<String> getAuthorsById(int id) {
        Set<String> result = new HashSet<>();
        String authorQuery = "select AUTHOR.NAME_AUTHOR from AUTHOR, BOOK, COMPOSED " +
                "where BOOK.ID = COMPOSED.ID_BOOK and COMPOSED.ID_AUTHOR = AUTHOR.ID and BOOK.ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(authorQuery);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                result.add(resultSet.getString("NAME_AUTHOR"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    // Tan's code end
    public static void main(String[] args) {
        System.out.println(BookEntity.getBookById(2));
    }

    //load list language book
    public ArrayList<TypeLanguage> getLanguages() {

        String sql = "select * from TypeLanguage ";
        ArrayList<TypeLanguage> list = new ArrayList<>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
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

    //load list language book by id
    public ArrayList<TypeLanguage> getLanguages(int id_lang) {

        String sql = "select * from TypeLanguage where id=?";
        ArrayList<TypeLanguage> list = new ArrayList<>();
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

    //load list group book
    public ArrayList<GroupBook> getGroups() {

        String sql = "select * from group_book ";
        ArrayList<GroupBook> list = new ArrayList<>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
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

    //load list group book by id
    public ArrayList<GroupBook> getGroups(int id_group) {

        String sql = "select * from group_book where id=?";
        ArrayList<GroupBook> list = new ArrayList<>();
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

    //load list category book
    public ArrayList<Categories> getCategories() {

        String sql = "select * from group_book";
        ArrayList<Categories> list = new ArrayList<>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Categories cat = new Categories();
                cat.setId(rs.getInt(1));
                cat.setName(rs.getString(2));
                cat.setId_group(rs.getInt(3));
                list.add(cat);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    /*public static void main(String[] args) {
        BookEntity be= new BookEntity();
    }*/

    //load list category book by id
    public ArrayList<Categories> getCategories(int id_cat) {

        String sql = "select * from group_book where id=?";
        ArrayList<Categories> list = new ArrayList<>();
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_cat);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Categories cat = new Categories();
                cat.setId(rs.getInt(1));
                cat.setName(rs.getString(2));
                cat.setId_group(rs.getInt(3));
                list.add(cat);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Tan code start
    public List<Book> getNewBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where new = 1 order by b.id;";
        try {
            statement = ConnectionDB.connect(sql);
            ResultSet rs = statement.executeQuery(sql);

            int current = -1;
            int previous = -1;
            while (rs.next()) {
                current = rs.getInt(1);
                if (current != previous) {
                    Book book = new Book();
                    book.setId(rs.getInt(1));
                    book.setName(rs.getString(2));
                    book.setPrice(rs.getLong(3));
                    book.setPriceSale(rs.getLong(4));
                    book.setDescription(rs.getString(5));
                    book.setInformation(rs.getString(6));
                    book.getImgs().add(rs.getString(7));
                    list.add(book);
                    previous = current;
                } else {
                    list.get(list.size() - 1).getImgs().add(rs.getString(7));
                    previous = current;
                }
            }
            return list;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<Book> getHotBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where hot = 1 order by b.id;";
        try {
            statement = ConnectionDB.connect(sql);
            ResultSet rs = statement.executeQuery(sql);

            int current = -1;
            int previous = -1;
            while (rs.next()) {
                current = rs.getInt(1);
                if (current != previous) {
                    Book book = new Book();
                    book.setId(rs.getInt(1));
                    book.setName(rs.getString(2));
                    book.setPrice(rs.getLong(3));
                    book.setPriceSale(rs.getLong(4));
                    book.setDescription(rs.getString(5));
                    book.setInformation(rs.getString(6));
                    book.getImgs().add(rs.getString(7));
                    list.add(book);
                    previous = current;
                } else {
                    list.get(list.size() - 1).getImgs().add(rs.getString(7));
                    previous = current;
                }
            }
            return list;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<Book> getPromotionBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where promotion = 1 order by b.id;";
        try {
            statement = ConnectionDB.connect(sql);
            ResultSet rs = statement.executeQuery(sql);

            int current = -1;
            int previous = -1;
            while (rs.next()) {
                current = rs.getInt(1);
                if (current != previous) {
                    Book book = new Book();
                    book.setId(rs.getInt(1));
                    book.setName(rs.getString(2));
                    book.setPrice(rs.getLong(3));
                    book.setPriceSale(rs.getLong(4));
                    book.setDescription(rs.getString(5));
                    book.setInformation(rs.getString(6));
                    book.getImgs().add(rs.getString(7));
                    list.add(book);
                    previous = current;
                } else {
                    list.get(list.size() - 1).getImgs().add(rs.getString(7));
                    previous = current;
                }
            }
            return list;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public List<Book> getBestSellerBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where bestseller = 1 order by b.id;";
        try {
            statement = ConnectionDB.connect(sql);
            ResultSet rs = statement.executeQuery(sql);

            int current = -1;
            int previous = -1;
            while (rs.next()) {
                current = rs.getInt(1);
                if (current != previous) {
                    Book book = new Book();
                    book.setId(rs.getInt(1));
                    book.setName(rs.getString(2));
                    book.setPrice(rs.getLong(3));
                    book.setPriceSale(rs.getLong(4));
                    book.setDescription(rs.getString(5));
                    book.setInformation(rs.getString(6));
                    book.getImgs().add(rs.getString(7));
                    list.add(book);
                    previous = current;
                } else {
                    list.get(list.size() - 1).getImgs().add(rs.getString(7));
                    previous = current;
                }
            }
            return list;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
}
