package vn.edu.nlu.utils;

import vn.edu.nlu.beans.Book;

import java.util.Set;

public class JsonCart {
    // fields
    private Set<Book> books;
    private String notification;
    // controller
    public JsonCart(Set<Book> books, String notification) {
        this.books = books;
        this.notification = notification;
    }
    // methods
    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }

    public String getNotification() {
        return notification;
    }

    public void setNotification(String notification) {
        this.notification = notification;
    }
}
