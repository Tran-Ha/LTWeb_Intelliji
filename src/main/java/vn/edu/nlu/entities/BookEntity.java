package vn.edu.nlu.entities;

import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.beans.GroupBook;
import vn.edu.nlu.beans.TypeLanguage;
import vn.edu.nlu.database.ConnectionDB2;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class BookEntity {
    //load list language book
    public ArrayList<TypeLanguage> getListLanguage(){

        String sql="select * from TypeLanguage ";
        ArrayList<TypeLanguage> list = new ArrayList<>();
        try {
            PreparedStatement ps= ConnectionDB2.connect(sql);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                TypeLanguage lang= new TypeLanguage();
                lang.setId(rs.getInt(1));
                lang.setName(rs.getString(2));
                list.add(lang);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //load list language book by id
    public ArrayList<TypeLanguage> getListLanguage(int id_lang){

        String sql="select * from TypeLanguage where id=?";
        ArrayList<TypeLanguage> list = new ArrayList<>();
        try {
            PreparedStatement ps= ConnectionDB2.connect(sql);
            ps.setInt(1,id_lang);
            ResultSet rs= ps.executeQuery();

            while(rs.next()){
                TypeLanguage lang= new TypeLanguage();
                lang.setId(rs.getInt(1));
                lang.setName(rs.getString(2));
                list.add(lang);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //load list group book
    public ArrayList<GroupBook> getListGroup(){

        String sql="select * from group_book ";
        ArrayList<GroupBook> list = new ArrayList<>();
        try {
            PreparedStatement ps= ConnectionDB2.connect(sql);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                GroupBook group= new GroupBook();
                group.setId(rs.getInt(1));
                group.setName(rs.getString(2));
                group.setId_language(rs.getInt(3));
                list.add(group);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    //load list group book by id
    public ArrayList<GroupBook> getListGroup(int id_group){

        String sql="select * from group_book where id=?";
        ArrayList<GroupBook> list = new ArrayList<>();
        try {
            PreparedStatement ps= ConnectionDB2.connect(sql);
            ps.setInt(1,id_group);
            ResultSet rs= ps.executeQuery();

            while(rs.next()){
                GroupBook group= new GroupBook();
                group.setId(rs.getInt(1));
                group.setName(rs.getString(2));
                group.setId_language(rs.getInt(3));
                list.add(group);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //load list category book
    public ArrayList<Categories> getListCategories(){

        String sql="select * from group_book";
        ArrayList<Categories> list = new ArrayList<>();
        try {
            PreparedStatement ps= ConnectionDB2.connect(sql);
            ResultSet rs= ps.executeQuery();

            while(rs.next()){
                Categories cat= new Categories();
                cat.setId(rs.getInt(1));
                cat.setName(rs.getString(2));
                cat.setId_group(rs.getInt(3));
                list.add(cat);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //load list category book by id
    public ArrayList<Categories> getListCategories(int id_cat){

        String sql="select * from group_book where id=?";
        ArrayList<Categories> list = new ArrayList<>();
        try {
            PreparedStatement ps= ConnectionDB2.connect(sql);
            ps.setInt(1,id_cat);
            ResultSet rs= ps.executeQuery();

            while(rs.next()){
                Categories cat= new Categories();
                cat.setId(rs.getInt(1));
                cat.setName(rs.getString(2));
                cat.setId_group(rs.getInt(3));
                list.add(cat);
            }
            rs.close();
            ps.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
        BookEntity be= new BookEntity();
        System.out.println(be.getListCategories());
    }
}
