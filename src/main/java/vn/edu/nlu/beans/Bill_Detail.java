package vn.edu.nlu.beans;

public class Bill_Detail {
    private long id;
    private long id_bill;
    private int id_book;
    private int quantity;

    public Bill_Detail() {
    }

    public Bill_Detail(long id, long id_bill, int id_book, int quantity) {
        this.id = id;
        this.id_bill = id_bill;
        this.id_book = id_book;
        this.quantity = quantity;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId_bill() {
        return id_bill;
    }

    public void setId_bill(long id_bill) {
        this.id_bill = id_bill;
    }

    public int getId_book() {
        return id_book;
    }

    public void setId_book(int id_book) {
        this.id_book = id_book;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Bill_Detail{" +
                "id=" + id +
                ", id_bill=" + id_bill +
                ", id_book=" + id_book +
                ", quantity=" + quantity +
                '}';
    }
}
