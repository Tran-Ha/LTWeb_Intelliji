package vn.edu.nlu.beans;

import vn.edu.nlu.utils.Converter;

import java.util.Date;

public class Shipment {
    private int id;
    private String name;
    private Date delivery_date;
    private int fee;
    private String status;

    public Shipment() {
    }

    public Shipment(int id, String name, Date delivery_date, int fee, String status) {
        this.id = id;
        this.name = name;
        this.delivery_date = delivery_date;
        this.fee = fee;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDelivery_date() {
        return delivery_date;
    }

    public void setDelivery_date(Date delivery_date) {
        this.delivery_date = delivery_date;
    }

    public int getFee() {
        return fee;
    }
    public String getFee(int fee) {
        return Converter.convertIntToMoneyString(fee);
    }


    public void setFee(int fee) {
        this.fee = fee;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Shipment{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", delivery_date=" + delivery_date +
                ", fee=" + fee +
                ", status='" + status + '\'' +
                '}';
    }
}
