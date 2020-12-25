package vn.edu.nlu.beans;

import java.io.Serializable;

public class Categories implements Serializable {
    private int id;
    private String name;
    private int id_group;

    public Categories(){

    }
    public Categories(int id,String name, int id_group){
         this.id=id;
         this.name=name;
         this.id_group=id_group;
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

    public int getId_group() {
        return id_group;
    }

    public void setId_group(int id_group) {
        this.id_group = id_group;
    }

    @Override
    public String toString() {
        return "id=" + id +
                ", name='" + name + '\'' +
                ", id_group=" + id_group ;
    }
}
