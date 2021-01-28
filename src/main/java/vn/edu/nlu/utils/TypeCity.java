package vn.edu.nlu.utils;

import java.util.LinkedHashMap;
import java.util.Map;

public class TypeCity {
    private static TypeCity instance = null;
    private static Map<Integer, String> map = new LinkedHashMap<Integer, String>();

    private TypeCity(){
        createType();
    }
    public static TypeCity getInstance()
    {
        if (instance == null)
            instance = new TypeCity();

        return instance;
    }

    public static void createType() {
        int count=0;

        map.put(++count, "An Giang");
        map.put(++count, "Bà Rịa - Vũng Tàu");
        map.put(++count, "Bắc Giang");
        map.put(++count, "Bắc Kạn");
        map.put(++count, "Bạc Liêu");
        map.put(++count, "Bắc Ninh");
        map.put(++count, "Bến Tre");
        map.put(++count, "Bình Định");
        map.put(++count, "Bình Dương");
        map.put(++count, "Bình Phước");
        map.put(++count, "Bình Thuận");
        map.put(++count, "Cà Mau");
        map.put(++count, "Cao Bằng");
        map.put(++count, "Đắk Lắk");
        map.put(++count, "Đắk Nông");
        map.put(++count, "Điện Biên");
        map.put(++count, "Đồng Nai");
        map.put(++count, "Đồng Tháp");
        map.put(++count, "Gia Lai");
        map.put(++count, "Hà Giang	Hà Nam");
        map.put(++count, "Hà Tĩnh");
        map.put(++count, "Hải Dương");
        map.put(++count, "Hậu Giang");
        map.put(++count, "Hòa Bình");
        map.put(++count, "Hưng Yên");
        map.put(++count, "Khánh Hòa");
        map.put(++count, "Kiên Giang");
        map.put(++count, "Kon Tum");
        map.put(++count, "Lai Châu");
        map.put(++count, "Lâm Đồng");
        map.put(++count, "Lạng Sơn");
        map.put(++count, "Lào Cai");
        map.put(++count, "Long An");
        map.put(++count, "Nam Định");
        map.put(++count, "Nghệ An");
        map.put(++count, "Ninh Bình");
        map.put(++count, "Ninh Thuận");
        map.put(++count, "Phú Thọ");
        map.put(++count, "Quảng Bình");
        map.put(++count, "Quảng Nam");
        map.put(++count, "Quảng Ngãi");
        map.put(++count, "Quảng Ninh");
        map.put(++count, "Quảng Trị");
        map.put(++count, "Sóc Trăng");
        map.put(++count, "Sơn La");
        map.put(++count, "Tây Ninh");
        map.put(++count, "Thái Bình");
        map.put(++count, "Thái Nguyên");
        map.put(++count, "Thanh Hóa");
        map.put(++count, "Thừa Thiên Huế");
        map.put(++count, "Tiền Giang");
        map.put(++count, "Trà Vinh");
        map.put(++count, "Tuyên Quang");
        map.put(++count, "Vĩnh Long");
        map.put(++count, "Vĩnh Phúc");
        map.put(++count, "Yên Bái");
        map.put(++count, "Phú Yên");
        map.put(++count, "Cần Thơ");
        map.put(++count, "Đà Nẵng");
        map.put(++count, "Hải Phòng");
        map.put(++count, "Hà Nội");
        map.put(++count, "TP HCM");
    }

    public static Map<Integer, String> getMap() {
        TypeCity.getInstance();
        return map;
    }
    public static int getIndex(String name) {
        TypeCity.getInstance();
        int index=-1;
        for(Map.Entry<Integer,String> entry: map.entrySet()){
            if(entry.getValue().equals(name.trim())){
                index=entry.getKey();
            }
        }
        return index;
    }
    public static void main(String[] args) {

       TypeCity.getInstance();
        System.out.println(getIndex("TP HCM"));

    }
}
