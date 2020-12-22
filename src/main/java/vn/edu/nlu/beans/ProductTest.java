package vn.edu.nlu.beans;

import java.io.Serializable;

public class ProductTest implements Serializable {
    private int id;
    private String name;
    private long price;
    private long salePrice;
    private String img;
    private int quatity;

    public ProductTest(){

    }

    public ProductTest(int id,String name,long price,long salePrice,String img){
        this.id=id;
        this.name=name;
        this.price=price;
        this.salePrice= salePrice;
        this.img=img;
    }

    public void add(){
        quatity++;
    }
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public long getPrice() {
        return price;
    }

    public long getSalePrice() {
        return salePrice;
    }

    public String getImg() {
        return img;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public void setSalePrice(long salePrice) {
        this.salePrice = salePrice;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getQuatity() {
        return quatity;
    }

    public void setQuatity(int quatity) {
        this.quatity = quatity;
    }

    @Override
    public String toString() {
        return "ProductTest{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", salePrice=" + salePrice +
                ", img='" + img + '\'' +
                '}';
    }
}
