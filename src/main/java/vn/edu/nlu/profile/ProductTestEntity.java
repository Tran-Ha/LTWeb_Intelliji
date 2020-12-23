package vn.edu.nlu.profile;

import vn.edu.nlu.beans.ProductTest;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.*;
import java.util.*;

public class ProductTestEntity {

    public List<ProductTest> getAllProduct(){
        List<ProductTest> result= new LinkedList<ProductTest>();
        Statement s= null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs= s.executeQuery("select * from product");
            while(rs.next()){
                result.add(new ProductTest(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getLong(3),
                        rs.getLong(4),
                        rs.getString(5)));
            }
            s.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public int insertProducts(List<ProductTest> data){
        Statement s= null;
        try {
            s = ConnectionDB.connect();
            String sql ="INSERT INTO product (id, name, price, priceSale, img)\n" +
                    "VALUES\n" ;
            for (int i=0; i<data.size(); i++){
                if(i==data.size()-1)
                    sql+="\t("+data.get(i).getId()+","
                            +"\t\'"+data.get(i).getName()+"\',"
                            +"\t"+data.get(i).getPrice()+","
                            +"\t"+data.get(i).getSalePrice()+","
                            +"\t\'"+data.get(i).getImg()+"\'"
                            +");\n";
                else
                    sql+="\t("+data.get(i).getId()+","
                            +"\t\'"+data.get(i).getName()+"\',"
                            +"\t"+data.get(i).getPrice()+","
                            +"\t"+data.get(i).getSalePrice()+","
                            +"\t\'"+data.get(i).getImg()+"\'"
                            +"),\n";
            }
            int re= s.executeUpdate(sql);
            s.close();
            return re;
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }
    public ProductTest findById(int id){
        Statement s= null;
        try {
            s = ConnectionDB.connect();
            String sql ="select * from product where id="+id ;
            ResultSet rs = s.executeQuery(sql);
            rs.last();
            if(rs.getRow()>1) return null;
            rs.beforeFirst();
            rs.next();
            ProductTest pt= new ProductTest(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getLong(3),
                    rs.getLong(4),
                    rs.getString(5)
            );
            s.close();
            return pt;
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public static void main(String[] args) {
        ProductTestEntity pe= new ProductTestEntity();
        System.out.println(pe.getAllProduct());

    }
}
