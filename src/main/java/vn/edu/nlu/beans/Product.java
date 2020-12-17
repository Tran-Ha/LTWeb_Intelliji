package vn.edu.nlu.beans;

import java.io.Serializable;
import java.util.List;

public class Product implements Serializable {
    private int id;
    private String name;
    private String type;
    private double startPrice;
    private double salePrice;
    private String description;
    private String information;
    private String publisher;

    private List<String> imageLinks;
    private List<String> authors;

    public Product(){
    }
    public Product(int id, String name, double startPrice, double salePrice, String publisher, String description,
                String information, List<String> imageLinks, List<String> authors) {
        this.id = id;
        this.name = name;
        this.startPrice = startPrice;
        this.salePrice = salePrice;
        this.publisher = publisher;
        this.description = description;
        this.information = information;

        this.imageLinks = imageLinks;
        this.authors = authors;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the startPrice
     */
    public double getStartPrice() {
        return startPrice;
    }

    /**
     * @param startPrice the startPrice to set
     */
    public void setStartPrice(double startPrice) {
        this.startPrice = startPrice;
    }

    /**
     * @return the salePrice
     */
    public double getSalePrice() {
        return salePrice;
    }

    /**
     * @param salePrice the salePrice to set
     */
    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the information
     */
    public String getInformation() {
        return information;
    }

    /**
     * @param information the information to set
     */
    public void setInformation(String information) {
        this.information = information;
    }

    /**
     * @return the publisher
     */
    public String getPublisher() {
        return publisher;
    }

    /**
     * @param publisher the publisher to set
     */
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    /**
     * @return the imageLinks
     */
    public List<String> getImageLinks() {
        return imageLinks;
    }

    /**
     * @param imageLinks the imageLinks to set
     */
    public void setImageLinks(List<String> imageLinks) {
        this.imageLinks = imageLinks;
    }

    /**
     * @return the authors
     */
    public List<String> getAuthors() {
        return authors;
    }

    /**
     * @param authors the authors to set
     */
    public void setAuthors(List<String> authors) {
        this.authors = authors;
    }
}

