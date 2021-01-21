package vn.edu.nlu.utils;

import java.util.*;

public class TypeOrder {
    private static Map<Integer, String> map = new HashMap<Integer, String>();
    private static Map<Integer, String> mapSql = new HashMap<Integer, String>();
    private static TypeOrder instance = null;

    private static Set<Integer> list = new LinkedHashSet<Integer>();
    private TypeOrder(){
        createType();
        createSQL();
        createList();
    }
    public static TypeOrder getInstance()
    {
        if (instance == null)
            instance = new TypeOrder();

        return instance;
    }
    public static void createType() {
        map.put(1,"Sắp xếp");
        map.put(2,"Giá thấp");
        map.put(3,"Giá cao");
        map.put(4,"Giảm giá nhiều");
        map.put(5,"Bán chạy");
        map.put(6,"Hàng mới");
    }

    public static void createSQL() {
        mapSql.put(1,"");
        mapSql.put(2,"order by PRICESALE ASC");
        mapSql.put(3,"order by PRICESALE desc");
        mapSql.put(4,"order by DISCOUNT desc");
        mapSql.put(5,"order by SOLD desc, DATE_CREATED desc");
        mapSql.put(6,"order by DATE_CREATED desc");
    }

    public static void createList() {
        list.add(12);
        list.add(24);
    }
    public static String getSQL(int id_order ){
        TypeOrder.getInstance();
        return mapSql.get(id_order);
    }
    public static Collection<String> getAll() {
        TypeOrder.getInstance();
        return map.values();
    }

    public static Set<Integer> getList() {
        return list;
    }

    public static void main(String[] args) {
        new TypeOrder();
        System.out.println(TypeOrder.getAll());
    }
}
