package vn.edu.nlu.beans;

import java.util.Date;

public class User {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String password;
    private String address;
    private String city;
    private String img;
    private Date birthday;
    private boolean active;
    private int role;
    private int reliability;//độ tin cậy

    public User(){}
    public User(int id, String name, String email, String phone, String password, String address, String city, String img, Date birthday, boolean active, int role,int reliability) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.address = address;
        this.city = city;
        this.img = img;
        this.birthday = birthday;
        this.active = active;
        this.role = role;
        this.reliability=reliability;
    }
    public int getReliability() {
        return reliability;
    }

    public void setReliability(int reliability) {
        this.reliability = reliability;
    }

    public User(int id, String name, String email, String phone, String password, String address, String city, String img, Date birthday, boolean active, int role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.address = address;
        this.city = city;
        this.img = img;
        this.birthday = birthday;
        this.active = active;
        this.role = role;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", img='" + img + '\'' +
                ", birthday=" + birthday +
                ", active=" + active +
                ", role=" + role +
                '}';
    }
}
