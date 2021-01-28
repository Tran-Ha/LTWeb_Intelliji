package vn.edu.nlu.beans;

import java.util.Date;

public class Bill {
    private long id;
    private int id_user;
    private int status;
    private int id_shipment;
    private int id_payment;
    private String address;
    private int city;
    private String note;
    private Date createdDate;
    private String phone;

    public Bill() {
    }

    public Bill(long id, int id_user, int status, int id_shipment, int id_payment, String address, int city, String note, Date createdDate, String phone) {
        this.id = id;
        this.id_user = id_user;
        this.status = status;
        this.id_shipment = id_shipment;
        this.id_payment = id_payment;
        this.address = address;
        this.city = city;
        this.note = note;
        this.createdDate=createdDate;
        this.phone=phone;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId_shipment() {
        return id_shipment;
    }

    public void setId_shipment(int id_shipment) {
        this.id_shipment = id_shipment;
    }

    public int getId_payment() {
        return id_payment;
    }

    public void setId_payment(int id_payment) {
        this.id_payment = id_payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCity() {
        return city;
    }

    public void setCity(int city) {
        this.city = city;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", id_user=" + id_user +
                ", status=" + status +
                ", id_shipment=" + id_shipment +
                ", id_payment=" + id_payment +
                ", address='" + address + '\'' +
                ", city=" + city +
                ", note='" + note + '\'' +
                ", createdDate=" + createdDate +
                ", phone='" + phone + '\'' +
                '}';
    }
}
