package vn.edu.nlu.beans;

import java.io.Serializable;

public class Role implements Serializable {
    // fields
    private int id;
    private String name;

    // constructor
    public Role() {
    }

    public Role(int id, String name) {
        this.id = id;
        this.name = name;
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

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
