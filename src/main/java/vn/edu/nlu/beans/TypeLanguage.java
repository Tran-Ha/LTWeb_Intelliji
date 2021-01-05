package vn.edu.nlu.beans;

import java.io.Serializable;
import java.util.Objects;

public class TypeLanguage implements Serializable {
    private int id;
    private String name;

    public TypeLanguage()    {

    }

    public TypeLanguage(int id, String name){
        this.id=id;
        this.name=name;
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

    @Override
    public String toString() {
        return "id=" + id + ", name='" + name ;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TypeLanguage that = (TypeLanguage) o;
        return Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}

