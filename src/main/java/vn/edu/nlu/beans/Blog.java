package vn.edu.nlu.beans;

import java.io.Serializable;
import java.util.Date;

public class Blog implements Serializable {
    // fields
    private int id;
    private String title;
    private String image;
    private int idWriter;
    private Date writeDate;
    private String content;

    // constructor
    public Blog() {
    }

    public Blog(int id, String title, String img, int idWriter, Date writeDate, String content) {
        this.id = id;
        this.title = title;
        this.image = img;
        this.idWriter = idWriter;
        this.writeDate = writeDate;
        this.content = content;
    }

    // methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getIdWriter() {
        return idWriter;
    }

    public void setIdWriter(int idWriter) {
        this.idWriter = idWriter;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(Date writeDate) {
        this.writeDate = writeDate;
    }
}
