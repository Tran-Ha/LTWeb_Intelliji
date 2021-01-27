package vn.edu.nlu.utils;

import vn.edu.nlu.beans.Book;

import java.util.Set;

public class HomePageHelper {
    // methods
    public static Set<Book> getDistinctBooks(Set<Book> books1, Set<Book> books2) {
        books1.addAll(books2);
        return books1;
    }
}
