package vn.edu.nlu.Model;

import vn.edu.nlu.beans.ProductTest;

import java.util.*;

public class Cart {
    Map<Integer, ProductTest> data = new HashMap<>();
    public Cart(){
    }
    public  void put(ProductTest p){
        if(data.containsKey(p.getId()))
            data.get(p.getId()).add();
        else
            data.put(p.getId(),p);
    }

    public void update(int id, int quatity){
        if(quatity<=0) return;
        if(data.containsKey(id)) data.get(id).setQuatity(quatity);
    }

    public void remove(){
        
    }
}
