package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.database.ConnectionDB;
import vn.edu.nlu.utils.TypeOrder;
import vn.edu.nlu.utils.TypePrice;

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
                book.setQuantity(resultSet.getInt("QUANTITY"));
                book.setDescription(resultSet.getString("DESCRIPTION"));
                book.setInformation(resultSet.getString("INFORMATION"));
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

    public static int getQuantityByBook(Book book) {
        return getQuantityByBookId(book.getId());
    }

    private static int getQuantityByBookId(int id) {
        String query = "select QUANTITY from BOOK where ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("QUANTITY");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public static Set<Book> getNewBooks(int numberOfBook) {
        return getSpecialBooks("NEW", 1, numberOfBook);
    }

    public static Set<Book> getHotBooks(int numberOfBook) {
        return getSpecialBooks("HOT", 1, numberOfBook);
    }

    public static Set<Book> getPromotionBooks(int numberOfBook) {
        return getSpecialBooks("PROMOTION", 1, numberOfBook);
    }

    public static Set<Book> getBestSellerBooks(int numberOfBook) {
        return getSpecialBooks("BESTSELLER", 1, numberOfBook);
    }

    public static Set<Book> getSpecialBooks(String field, int value, int numberOfBook) {
        Set<Book> result = new HashSet<>();
        String query = "select * from BOOK where ACTIVE = true and QUANTITY > 0 and + " + field + " = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, value);
            ResultSet resultSet = preparedStatement.executeQuery();
            int counter = 0;
            while (resultSet.next() && counter++ < numberOfBook) {
                if (resultSet.next()) {
                    Book book = new Book();
                    book.setId(resultSet.getInt("ID"));
                    book.setName(resultSet.getString("NAME"));
                    book.setPrice(resultSet.getLong("PRICE"));
                    book.setPriceSale(resultSet.getLong("PRICESALE"));
                    book.setDescription(resultSet.getString("DESCRIPTION"));
                    book.setInformation(resultSet.getString("INFORMATION"));
                    book.setNew(resultSet.getBoolean("NEW"));
                    book.setNew(resultSet.getBoolean("HOT"));
                    book.setNew(resultSet.getBoolean("PROMOTION"));
                    book.setNew(resultSet.getBoolean("BESTSELLER"));
                    book.setImgs(getImageLinksById(book.getId()));
                    result.add(book);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Set<Book> getLiteraryBooks(int numberOfBook) {
        return getBooksByGroupId(6, numberOfBook);
    }

    public static Set<Book> getSkillBooks(int numberOfBook) {
        return getBooksByGroupId(0, numberOfBook);
    }

    public static Set<Book> getBooksByGroupId(int groupId, int numberOfBook) {
        Set<Book> result = new HashSet<>();
        String query = "select * from BOOK, CATEGORIES, GROUP_BOOK where BOOK.ID_CATEGORIES = CATEGORIES.ID and CATEGORIES.ID_GROUP = GROUP_BOOK.ID and ACTIVE = true and QUANTITY > 0 and GROUP_BOOK.ID = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, groupId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int counter = 0;
            while (resultSet.next() && counter++ < numberOfBook) {
                if (resultSet.next()) {
                    Book book = new Book();
                    book.setId(resultSet.getInt("ID"));
                    book.setName(resultSet.getString("NAME"));
                    book.setPrice(resultSet.getLong("PRICE"));
                    book.setPriceSale(resultSet.getLong("PRICESALE"));
                    book.setDescription(resultSet.getString("DESCRIPTION"));
                    book.setInformation(resultSet.getString("INFORMATION"));
                    book.setNew(resultSet.getBoolean("NEW"));
                    book.setNew(resultSet.getBoolean("HOT"));
                    book.setNew(resultSet.getBoolean("PROMOTION"));
                    book.setNew(resultSet.getBoolean("BESTSELLER"));
                    book.setImgs(getImageLinksById(book.getId()));
                    result.add(book);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Set<Book> getSimilarBooksByBook(Book book, int numberOfBook) {
        if (book == null) {
            return null;
        }
        return getBooksByCategoriesId(book.getCategoriesId(), numberOfBook);
    }

    public static Set<Book> getPurchasedBooksByBook(Book book, int numberOfBook){
        if (book == null) {
            return null;
        }
        return getBooksByCategoriesId(book.getCategoriesId(), numberOfBook);
    }

    public static Set<Book> getBooksByCategoriesId(int groupId, int numberOfBook) {
        Set<Book> result = new HashSet<>();
        String bookQuery = "select * from BOOK where ACTIVE = true and QUANTITY > 0 and ID_CATEGORIES = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(bookQuery);
            preparedStatement.setInt(1, groupId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int counter = 0;
            while (resultSet.next() && counter++ < numberOfBook) {
                Book book = new Book();
                book.setId(resultSet.getInt("ID"));
                book.setName(resultSet.getString("NAME"));
                book.setPrice(resultSet.getLong("PRICE"));
                book.setPriceSale(resultSet.getLong("PRICESALE"));
                book.setQuantity(resultSet.getInt("QUANTITY"));
                book.setDescription(resultSet.getString("DESCRIPTION"));
                book.setInformation(resultSet.getString("INFORMATION"));
                book.setNew(resultSet.getBoolean("NEW"));
                book.setNew(resultSet.getBoolean("HOT"));
                book.setNew(resultSet.getBoolean("PROMOTION"));
                book.setNew(resultSet.getBoolean("BESTSELLER"));
                book.setImgs(getImageLinksById(book.getId()));
                result.add(book);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Set<Book> getFavoriteBooksByUser(User user, int numberOfBook) {
        if (user == null) {
            return null;
        }
        return getFavoriteBooksByUserId(user.getId(), numberOfBook);
    }

    public static Set<Book> getFavoriteBooksByUserId(int userId, int numberOfBook) {
        Set<Book> result = new HashSet<>();
        String query = "select * from FAVORITE where ID_USER = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.connect(query);
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int counter = 0;
            while (resultSet.next() && counter++ < numberOfBook) {
                int bookId = resultSet.getInt("ID_BOOK");
                Book book = getBookById(bookId);
                result.add(book);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    //
    public static int getTotalByIdCat(int id_cat, int id_price) {
        int total = 0;
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select count(*) from book where ID_CATEGORIES=?" + typePrice + ";";
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_cat);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public static int getTotalByIdPub(int id_pub, int id_price) {
        int total = 0;
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select count(*) from book where ID_PUBLICATION=?" + typePrice;
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_pub);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public static int getTotalByIdLang(int id_lang, int id_price) {
        int total = 0;
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select count(*) from book b, categories c, group_book g, typelanguage l " +
                "where ID_LANGUAGE=? and b.ID_CATEGORIES=c.ID and c.ID_GROUP=g.ID and g.ID_LANGUAGE=l.ID" + typePrice;
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_lang);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public static int getTotalByIdGroup(int id_group, int id_price) {
        int total = 0;
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select count(*) from book b, categories c, group_book g " +
                "where ID_GROUP=? and b.ID_CATEGORIES=c.ID and c.ID_GROUP=g.ID " + typePrice;
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_group);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    //update?
    public static int getTotalByKey(int key) {
        int total = 0;
        String sql = "select count(*) from book ";
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            // ps.setInt(1, id_group);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public static Map<Integer, Book> getBooksByIdCat(int id_cat, int currentPage, int bPerPage, int order, int id_price) {
        Map<Integer, Book> list = new LinkedHashMap<Integer, Book>();
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select *  from \n" +
                "(select b.ID, b.`NAME` Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION," +
                "b.DATE_CREATED,sum(b.ORIGINAL-b.QUANTITY) sold,sum(price-pricesale) discount " +
                "from book b where b.ID_CATEGORIES=? " + typePrice +
                "\tgroup by  b.ID,  Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION " +
                " limit ?,?) bk\n" +
                "inner join image i on i.ID_BOOK=bk.ID " + TypeOrder.getSQL(order) + ";";
        System.out.println(sql);
        try {
            int start = (currentPage - 1) * bPerPage + 1;
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_cat);
            ps.setInt(2, start);
            ps.setInt(3, bPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("Id"));

                if (!list.containsKey(b.getId())) {

                    b.setName(rs.getString("Tittle"));
                    b.setPrice(rs.getLong("Price"));
                    b.setPriceSale(rs.getLong("PriceSale"));
                    b.setDescription(rs.getString("Description"));
                    b.setInformation(rs.getString("Information"));
                    b.getImgs().add(rs.getString("Link"));

                    list.put(b.getId(), b);
                } else {
                    b.getImgs().add(rs.getString("Link"));
                }
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Map<Integer, Book> getBooksByIdGroup(int id_group, int currentPage, int bPerPage, int order, int id_price) {
        Map<Integer, Book> list = new LinkedHashMap<Integer, Book>();
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select *  from \n" +
                "(select b.ID, b.`NAME` Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION," +
                "b.DATE_CREATED,sum(b.ORIGINAL-b.QUANTITY) sold,sum(price-pricesale) discount " +
                "from book b, group_book g , categories c where b.ID_CATEGORIES\t=c.ID and c.ID_GROUP=g.ID and g.ID=? "
                + typePrice +
                "\tgroup by  b.ID,  Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION  limit ?,?) bk\n" +
                "inner join image i on i.ID_BOOK=bk.ID " + TypeOrder.getSQL(order) + ";";
        try {
            int start = (currentPage - 1) * bPerPage + 1;
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_group);
            ps.setInt(2, start);
            ps.setInt(3, bPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("Id"));

                if (!list.containsKey(b.getId())) {

                    b.setName(rs.getString("Tittle"));
                    b.setPrice(rs.getLong("Price"));
                    b.setPriceSale(rs.getLong("PriceSale"));
                    b.setDescription(rs.getString("Description"));
                    b.setInformation(rs.getString("Information"));
                    b.getImgs().add(rs.getString("Link"));

                    list.put(b.getId(), b);
                } else {
                    b.getImgs().add(rs.getString("Link"));
                }
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Map<Integer, Book> getBooksByIdLang(int id_lang, int currentPage, int bPerPage, int order, int id_price) {
        Map<Integer, Book> list = new LinkedHashMap<Integer, Book>();
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        String sql = "select *  from \n" +
                "(select b.ID, b.`NAME` Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION," +
                "b.DATE_CREATED,sum(b.ORIGINAL-b.QUANTITY) sold,sum(price-pricesale) discount " +
                "from book b, group_book g , categories c, typelanguage l " +
                "where b.ID_CATEGORIES\t=c.ID and c.ID_GROUP=g.ID and g.ID_LANGUAGE=l.ID and l.ID=? " + typePrice +
                "\tgroup by  b.ID,  Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION  limit ?,?) bk\n" +
                "inner join image i on i.ID_BOOK=bk.ID " + TypeOrder.getSQL(order) + ";";
        try {
            int start = (currentPage - 1) * bPerPage + 1;
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_lang);
            ps.setInt(2, start);
            ps.setInt(3, bPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("Id"));

                if (!list.containsKey(b.getId())) {

                    b.setName(rs.getString("Tittle"));
                    b.setPrice(rs.getLong("Price"));
                    b.setPriceSale(rs.getLong("PriceSale"));
                    b.setDescription(rs.getString("Description"));
                    b.setInformation(rs.getString("Information"));
                    b.getImgs().add(rs.getString("Link"));

                    list.put(b.getId(), b);
                } else {
                    b.getImgs().add(rs.getString("Link"));
                }
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Map<Integer, Book> getBooksByIdPub(int id_pub, int currentPage, int bPerPage, int order, int id_price) {
        String typePrice = "";
        if (id_price != -1) typePrice = TypePrice.getSQL(id_price);
        Map<Integer, Book> list = new LinkedHashMap<Integer, Book>();
        String sql = "select *  from \n" +
                "(select b.ID, b.`NAME` Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION," +
                "b.DATE_CREATED,sum(b.ORIGINAL-b.QUANTITY) sold,sum(price-pricesale) discount " +
                "from book b where b.ID_PUBLICATION=? " + typePrice +
                "\tgroup by  b.ID,  Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION  limit ?,?) bk\n" +
                "inner join image i on i.ID_BOOK=bk.ID " + TypeOrder.getSQL(order) + ";";
        try {
            int start = (currentPage - 1) * bPerPage + 1;
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.setInt(1, id_pub);
            ps.setInt(2, start);
            ps.setInt(3, bPerPage);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("Id"));

                if (!list.containsKey(b.getId())) {

                    b.setName(rs.getString("Tittle"));
                    b.setPrice(rs.getLong("Price"));
                    b.setPriceSale(rs.getLong("PriceSale"));
                    b.setDescription(rs.getString("Description"));
                    b.setInformation(rs.getString("Information"));
                    b.getImgs().add(rs.getString("Link"));

                    list.put(b.getId(), b);
                } else {
                    b.getImgs().add(rs.getString("Link"));
                }
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Map<Integer,Book> getBooksByKeyword(String keyword, int currentPage, int bPerPage, int order, int id_price) {
        String typePrice="";
        if (id_price!=-1) typePrice=TypePrice.getSQL(id_price);
        Map<Integer, Book> list = new LinkedHashMap<Integer, Book>();
        String search =searchKey(keyword);
        String sql="select *  from \n" +
                "(select b.ID, b.`NAME` Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION," +
                "b.DATE_CREATED,sum(b.ORIGINAL-b.QUANTITY) sold,sum(price-pricesale) discount " +
                "from book b where  " +search+ typePrice +
                "\tgroup by  b.ID,  Tittle, b.PRICE, b.PRICESALE, b.DESCRIPTION, b.INFORMATION  limit ?,?) bk\n" +
                "inner join image i on i.ID_BOOK=bk.ID "+ TypeOrder.getSQL(order)+";";
        try {
            int start=(currentPage-1)*bPerPage+1;
            PreparedStatement ps= ConnectionDB.connect(sql);
            ps.setInt(1,start);
            ps.setInt(2,bPerPage);
            ResultSet rs=ps.executeQuery();

            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("Id"));

                if(!list.containsKey(b.getId())){

                    b.setName(rs.getString("Tittle"));
                    b.setPrice(rs.getLong("Price"));
                    b.setPriceSale(rs.getLong("PriceSale"));
                    b.setDescription(rs.getString("Description"));
                    b.setInformation(rs.getString("Information"));
                    b.getImgs().add(rs.getString("Link"));

                    list.put(b.getId(),b);
                }
                else{
                    b.getImgs().add(rs.getString("Link"));
                }
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static int getTotalByKeyword(String keyword, int id_price) {
        int total = 0;
        String typePrice="";
        if (id_price!=-1) typePrice=TypePrice.getSQL(id_price);

        String search =searchKey(keyword);
        String sql = "select count(*) from book b where "+search+ typePrice ;
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public static String searchKey(String keyword){
        List<String> keySearch= new ArrayList<String>();
        keySearch.add(keyword+"%");
        keySearch.add("%"+keyword+"%");
        keySearch.add("%"+keyword);

        String[] parts = keyword.split(" ");
        int n=parts.length;
        if(n>1){
            for(int i=0; i<n;i++){
                if(i==0) keySearch.add(parts[i]+"%");
                else
                if(i==n-1) keySearch.add("%"+parts[n-1]);
                else
                    keySearch.add("%"+parts[i]+"%");
            }
        }
        String search="";
        for(int i=0; i<keySearch.size();i++){
            if(i==0) search+="b.name like \'"+keySearch.get(i)+"\'";
            else
                search+="or b.name like \'"+keySearch.get(i)+"\'";
        }
        return search;
    }

    public static long getMaxPrice() {
        String sql = "select max(price) max\n" +
                "from book".toUpperCase();
        long max = 0;
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next())
                max = rs.getLong("max");

            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return max;
    }

    public static long getMinPrice() {
        String sql = "select min(price) min\n" +
                "from book";
        long min = 0;
        try {
            PreparedStatement ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next())
                min = rs.getLong("min");

            rs.close();
            ps.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return min;
    }

    // admin
    public static int countAll() {
        try {
            String query = "select count(*) from book";
            ConnectionDB connectionDB = new ConnectionDB();
            PreparedStatement ps = connectionDB.connect(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public static int count(String txtSearch) {
        try {
            String query = "select * from book where name like ?";
            ConnectionDB connectionDB = new ConnectionDB();
            PreparedStatement ps = connectionDB.connect(query);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public static List<Book> search(String txtSearch, int index, int size) {
        try {
            String query = "select * from (select b.id, b.name, b.pricesale, b.quantity, b.new, b.hot, b.bestSeller, b.promotion, b.active, c.name as cat_name from book b join categories c on b.id_categories = c.id where b.name like ? order by b.id limit ?, ?) t join image i WHERE i.ID_BOOK = t.id and i.LINK like ?";
            ConnectionDB connectionDB = new ConnectionDB();
            PreparedStatement ps = connectionDB.connect(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setInt(2, index * size - (size - 1));
            ps.setInt(3, size);
            ps.setString(4, "%0.jpg");
            ResultSet rs = ps.executeQuery();

            List<Book> list = new ArrayList<>();

            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt(1));
                book.setName(rs.getString(2));
                book.setPriceSale(rs.getLong(3));
                book.setQuantity(rs.getInt(4));
                book.setNew(rs.getBoolean(5));
                book.setHot(rs.getBoolean(6));
                book.setBestseller(rs.getBoolean(7));
                book.setPromotion(rs.getBoolean(8));
                book.setActive(rs.getBoolean(9));

                book.setCategory(rs.getString(10));
                book.getImgs().add(rs.getString("LINK"));

                list.add(book);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Book get(int id) {
        try {
            String query = "select * from (select b.id, b.name, b.pricesale, b.quantity, b.new, b.hot, b.bestSeller, b.promotion, b.active, b.information, c.name as cat_name from book b join categories c on b.id_categories = c.id where b.id = ?) t join image i WHERE i.ID_BOOK = t.id and i.LINK like ?";
            ConnectionDB connectionDB = new ConnectionDB();
            PreparedStatement ps = connectionDB.connect(query);
            ps.setInt(1, id);
            ps.setString(2, "%0.jpg");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt(1));
                book.setName(rs.getString(2));
                book.setPriceSale(rs.getLong(3));
                book.setQuantity(rs.getInt(4));
                book.setNew(rs.getBoolean(5));
                book.setHot(rs.getBoolean(6));
                book.setBestseller(rs.getBoolean(7));
                book.setPromotion(rs.getBoolean(8));
                book.setActive(rs.getBoolean(9));
                book.setInformation(rs.getString(10));
                book.setCategory(rs.getString(11));
                book.getImgs().add(rs.getString("LINK"));


                return book;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Book> getNewBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where new = 1 order by b.id;".toUpperCase();
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
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where hot = 1 order by b.id;".toUpperCase();
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
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where promotion = 1 order by b.id;".toUpperCase();
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
        String sql = "select b.id, name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book where bestseller = 1 order by b.id;".toUpperCase();
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

    public List<Book> getLiteraryBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, b.name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book join categories c on b.id_categories = c.id join group_book g on g.id = c.id_group where g.id = 6 limit 200".toUpperCase();
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

    public List<Book> getSkillBook() {
        Statement statement = null;
        List<Book> list = new ArrayList<>();
        String sql = "select b.id, b.name, price, pricesale, description, information, link from book b join image i on b.id = i.id_book join categories c on b.id_categories = c.id join group_book g on g.id = c.id_group where g.id = 0 limit 200".toUpperCase();
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

    public List<List<Book>> getCoupleBooks(List<Book> books) {
        List<List<Book>> result = new ArrayList<>();
        int counter = 0;
        List<Book> subList = new ArrayList<>();
        for (Book book : books) {
            if (subList.size() < 2) {
                subList.add(book);
            } else {
                result.add(subList);
                subList = new ArrayList<>();
                subList.add(book);
                counter = 0;
            }
        }
        return result;
    }

    public List<List<Book>> getCoupleSkillBooks() {
        return getCoupleBooks(getSkillBook());
    }

    public List<List<Book>> getCoupleLiteraryBooks() {
        return getCoupleBooks(getLiteraryBook());
    }
    /*public static void main(String[] args) {
        List<Book> list = search("con", 1, 10);

        for (Book book: list) {
            System.out.println(book);
        }
    }*/
}

