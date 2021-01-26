package vn.edu.nlu.beans;

import vn.edu.nlu.utils.Converter;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.*;

public class Book implements Serializable {
    // fields
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
    private int quantity;
    private String description;
    private String information;
    private ArrayList<String> imgs = new ArrayList<>();
    private Set<String> authors = new HashSet<>();

    private String category;
    // constructor
    public Book() {
    }

    public Book(int id, String name, long price, long priceSale,
                boolean isNew, boolean isHot, boolean isPromotion, boolean isBestseller, boolean isActive,
                Date date_created, int quatity, String description, String information) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.priceSale = priceSale;
        this.isNew = isNew;
        this.isHot = isHot;
        this.isPromotion = isPromotion;
        this.isBestseller = isBestseller;
        this.isActive = isActive;
        this.date_created = date_created;
        this.quantity = quatity;
        this.description = description;
        this.information = information;
    }

    // methods
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String[] getInformation() {
        return information.split(";");
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

    public Set<String> getAuthors() {
        return authors;
    }

    public void setAuthors(Set<String> authors) {
        this.authors = authors;
    }

    public String getMainImg() {
        for (String img : imgs) {
            if (img.endsWith("0.jpg"))
                return img;
        }
        return imgs.get(0);
    }

    public int getPercent(){
        return (int)(((double)price - (double) priceSale)/ (double) price * 100);
    }
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDecimalFormatPrice() {
        return Converter.convertDoubleToMoneyString(price);
    }

    public String getDecimalFormatPriceSale() {
        return Converter.convertDoubleToMoneyString(priceSale);
    }

    public double getDiscount() {
        return (price - priceSale)  * 100 / price;
    }
    public int getIntDiscount() {
        float down = price-priceSale;
        float discount=(down*100)/price;
        discount=((discount*10)%10 >=5 ?(discount*10)/10+1 :(discount*10)/10);
        return  (int)discount;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return id == book.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
