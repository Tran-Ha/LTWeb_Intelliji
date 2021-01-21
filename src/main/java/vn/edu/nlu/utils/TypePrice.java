package vn.edu.nlu.utils;

import vn.edu.nlu.entities.BookEntity;
import java.text.DecimalFormat;
import java.util.*;

public class TypePrice {
    private static long min= BookEntity.getMinPrice();
    private static long max= BookEntity.getMaxPrice();
    private static Map<Integer, String> map= new HashMap<Integer, String>();

    public TypePrice(){
    }
    public static Map<Integer, String> createType(int numType){
        long x=(max-min)/numType;
        int count=0;
        for (int i = 0; i < numType; i++) {
            long down=(((x*i)+50000)/100000)*100000;
            long up=((((i+1)*x)+50000)/100000)*100000;
            DecimalFormat f = new DecimalFormat();
            if(down==up) continue;
            String price=f.format(down)+"đ - "+f.format(up)+"đ";
            map.put(++count,price);
        }
        return map;
    }

    public static List<Long> getValues(String price) {
        List<Long> list = new ArrayList<Long>();
        String line = price.replace("đ","");
        line = line.replace(",","");

        String [] arr= line.split("-");
        long down = Long.parseLong(arr[0].trim());
        long up = Long.parseLong(arr[1].trim());
        list.add(down);
        list.add(up);
        return list;
    }
    public static String getSQL (int id_price){
        String price= map.get(id_price);
        List<Long> list =getValues(price);
        String sql="and (b.PRICE BETWEEN "+ list.get(0) +" and " + list.get(1) +" )";
        return sql;
    }
    public static Collection<String> getAll(){
        return  map.values();
    }
    public static void main(String[] args) {
        createType(10);
        System.out.println(getAll());
        System.out.println(getSQL(1));
    }
}
