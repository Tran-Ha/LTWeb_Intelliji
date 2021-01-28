package vn.edu.nlu.utils;

import java.util.LinkedHashMap;
import java.util.Map;

public class TypeStatus {
    private static TypeStatus instance = null;
    private static Map<Integer, String> map = new LinkedHashMap<Integer, String>();

    private TypeStatus(){
        createType();
    }
    public static TypeStatus getInstance()
    {
        if (instance == null)
            instance = new TypeStatus();

        return instance;
    }

    public static void createType() {
        int count=0;
        map.put(++count, "Đang xử lí");
        map.put(++count, "Giao hàng thành công");
        map.put(++count, "Đã hủy");
    }

    public static Map<Integer, String> getMap() {
        TypeStatus.getInstance();
        return map;
    }
    public static int getIndex(String name) {
        TypeStatus.getInstance();
        int index=-1;
        for(Map.Entry<Integer,String> entry: map.entrySet()){
            if(entry.getValue().equals(name.trim())){
                index=entry.getKey();
            }
        }
        return index;
    }
    public static void main(String[] args) {

        System.out.println(getMap().values());
        System.out.println(getIndex("Đang xử lí"));
    }
}
