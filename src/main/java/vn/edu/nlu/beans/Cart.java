package vn.edu.nlu.beans;

import vn.edu.nlu.entities.BookEntity;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

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

    public boolean addBook(Book book) {
        Integer quantity = bookMap.get(book);

        if (quantity != null) {
            bookMap.put(book, quantity + 1);
        } else {
            bookMap.put(book, 1);
        }
        return true;
    }
}
