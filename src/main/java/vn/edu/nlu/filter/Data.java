package vn.edu.nlu.filter;

import vn.edu.nlu.beans.ProductTest;

import java.util.HashMap;
import java.util.Map;

public class Data {
    public static Map<String, ProductTest> data = new HashMap<>();

    static {
        data.put("01", new ProductTest(1,"Bước chậm lại giữa thế gian vội vã",85000,42500, "img/product/001.jpg"));
        data.put("02", new ProductTest(2,"Nghệ thuật tinh tế của viêc \\\'Đếch\\\' quan tâm",95000,57300, "img/product/002.jpg"));
        data.put("03", new ProductTest(3,"Cân bằng cảm xúc cả lúc bão giông",96000,38400, "img/product/003.jpg"));
        data.put("04", new ProductTest(4,"Kỹ năng đi trước đam mê",108000,80900, "img/product/004.jpg"));
        data.put("05", new ProductTest(5,"Tôi, Tương lai, Thế giới",85000,42500, "img/product/005.jpg"));
        data.put("06", new ProductTest(6,"7 thói quen để thành đạt",85000,42500, "img/product/006.jpg"));
        data.put("07", new ProductTest(7,"Đường xưa mây trắng",85000,42500, "img/product/007.jpg"));
        data.put("08", new ProductTest(8,"Tuổi trẻ đáng giá bao nhiêu",85000,42500, "img/product/008.jpg"));
        data.put("09", new ProductTest(9,"Yêu những điều không hoàn hảo",85000,42500, "img/product/009.jpg"));
        data.put("10", new ProductTest(10,"Giới hạn của bạn chỉ là xuất phát điểm của tôi",85000,42500, "img/product/010.jpg"));
        data.put("11", new ProductTest(11,"Sự thật về thế giới",85000,42500, "img/product/011.jpg"));
        data.put("12", new ProductTest(12,"Nóng giận là bản năng, tĩnh lặng là bản lĩnh",85000,42500, "img/product/012.jpg"));

    }
}
