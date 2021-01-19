package vn.edu.nlu.beans;

import vn.edu.nlu.beans.Book;
import vn.edu.nlu.utils.Converter;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Cart implements Serializable {
    // fields
    private Map<Book, Integer> bookMap;

    // constructor
    public Cart() {
        bookMap = new HashMap<>();
    }

    // methods
    public Map<Book, Integer> getBookMap() {
        return bookMap;
    }

    public Set<Book> getBooks() {
        return bookMap.keySet();
    }

    public int getQuantityOfBook(Book book) {
        Integer quantity = bookMap.get(book);
        if (quantity == null) {
            return 0;
        }
        return quantity;
    }

    public int getTotalQuantity() {
        int result = 0;
        for (Book book : getBooks()) {
            result += bookMap.get(book);
        }
        return result;
    }

    public double getTotalPrice() {
        double result = 0;
        for (Book book : getBooks()) {
            result += book.getPriceSale() * bookMap.get(book);
        }
        return result;
    }

    public double getTotalPriceAndShipFee() {
        return getTotalPrice() + 20000;
    }

    public void deleteBook(Book book) {
        bookMap.remove(book);
    }

    public void updateBook(Book book, int quantity) {
        bookMap.put(book, quantity);
    }

    public String convertToMoney(double price) {
        return Converter.convertDoubleToMoneyString(price);
    }

    public boolean containBookById(int id) {
        for (Book book : getBooks()) {
            if (book.getId() == id) {
                return true;
            }
        }
        return false;
    }

    public int getQuantityById(int id) {
        for (Book book : getBooks()) {
            if (book.getId() == id) {
                return bookMap.get(book);
            }
        }
        return -1;
    }
}
