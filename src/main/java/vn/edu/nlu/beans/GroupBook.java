package vn.edu.nlu.beans;

import java.io.Serializable;
import java.util.Objects;

public class GroupBook implements Serializable {
    private int id;
    private String name;
    private int id_language;

    public GroupBook(){

    }

    public GroupBook(int id,String name,int id_language){
        this.id=id;
        this.name=name;
        this.id_language=id_language;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public int getId_language() {
        return id_language;
    }

    public void setId_language(int id_language) {
        this.id_language = id_language;
    }

    @Override
    public String toString() {
        return "id=" + id +
                ", name='" + name + '\'' +
                ", id_language=" + id_language ;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GroupBook groupBook = (GroupBook) o;
        return Objects.equals(name, groupBook.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, id_language);
    }
}
