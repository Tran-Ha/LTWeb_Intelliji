package vn.edu.nlu.beans;

import java.io.Serializable;
import java.util.Date;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;

public class Book implements Serializable {
    private int id;
    private String name;
    private long price;
    private long priceSale;
    private boolean isNew;
    private boolean isHot;
    private boolean isPromotion;
    private boolean isBestseller;
    private boolean isActive;
    private Date date_created;
    private int quatity;
    private String description;
    private String information;
    // Tan code
    private ArrayList<String> imgs = new ArrayList<>();
    // end

    public Book(){
    }

    public Book(int id, String name,long price, long priceSale,
                boolean isNew, boolean isHot, boolean isPromotion, boolean isBestseller, boolean isActive,
                Date date_created, int quatity, String description, String information){
        this.id=id;
        this.name=name;
        this.price=price;
        this.priceSale=priceSale;
        this.isNew=isNew;
        this.isHot=isHot;
        this.isPromotion=isPromotion;
        this.isBestseller=isBestseller;
        this.isActive=isActive;
        this.date_created=date_created;
        this.quatity=quatity;
        this.description=description;
        this.information=information;

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

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(long priceSale) {
        this.priceSale = priceSale;
    }

    public boolean isNew() {
        return isNew;
    }

    public void setNew(boolean aNew) {
        isNew = aNew;
    }

    public boolean isHot() {
        return isHot;
    }

    public void setHot(boolean hot) {
        isHot = hot;
    }

    public boolean isPromotion() {
        return isPromotion;
    }

    public void setPromotion(boolean promotion) {
        isPromotion = promotion;
    }

    public boolean isBestseller() {
        return isBestseller;
    }

    public void setBestseller(boolean bestseller) {
        isBestseller = bestseller;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    public int getQuatity() {
        return quatity;
    }

    public void setQuatity(int quatity) {
        this.quatity = quatity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public ArrayList<String> getImgs() {
        return imgs;
    }

    public void setImgs(ArrayList<String> imgs) {
        this.imgs = imgs;
    }

    // Tan code
    public String getMainImg(){
        for (String img: imgs) {
            if( img.endsWith("0.jpg"))
                return img;
        }
        return imgs.get(0);
    }

    public String getDecimalFormatPrice() {
        DecimalFormat f = new DecimalFormat();
        return  f.format(price);
    }

    public String getDecimalFormatPriceSale() {
        DecimalFormat f = new DecimalFormat();
        return  f.format(priceSale);
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name +
                ", price=" + price +
                ", priceSale=" + priceSale +
                ", imgs=" + imgs +
                '}';
    }
    // end
}
