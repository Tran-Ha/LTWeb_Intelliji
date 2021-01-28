package vn.edu.nlu.beans;

import java.util.Date;

public class Contact {
    private int id;
    private String title;
    private String content;
    private String sender_name;
    private String email;
    private String status_process;
    private Date createdDate;

    public Contact(int id, String title, String content, String sender_name, String email, String status_process, Date createdDate) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.sender_name = sender_name;
        this.email = email;
        this.status_process = status_process;
        this.createdDate=createdDate;
    }

    public Contact() {
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSender_name() {
        return sender_name;
    }

    public void setSender_name(String sender_name) {
        this.sender_name = sender_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus_process() {
        return status_process;
    }

    public void setStatus_process(String status_process) {
        this.status_process = status_process;
    }
}
