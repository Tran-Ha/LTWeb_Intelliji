package vn.edu.nlu.utils;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.beans.GroupBook;
import vn.edu.nlu.beans.TypeLanguage;
import vn.edu.nlu.entities.BlogEntity;
import vn.edu.nlu.entities.CategoryEntity;
import vn.edu.nlu.entities.GroupEntity;
import vn.edu.nlu.entities.LanguageEntity;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class Menu implements Serializable {
    // fields
    private static Menu menu;
    private Map<TypeLanguage, Set<GroupBook>> langGroupMap;
    private Map<GroupBook, Set<Categories>> groupCateMap;
    private Set<Blog> blogs;

    // constructor
    private Menu() {
        langGroupMap = new LinkedHashMap<>();
        groupCateMap = new LinkedHashMap<>();
        blogs = new LinkedHashSet<>();
    }

    // methods
    public static Menu getMenu() {
        if (menu == null) {
            return new Menu();
        } else {
            return menu;
        }
    }

    public void loadMenuFromDB() {
        Set<TypeLanguage> languages = LanguageEntity.getAll();
        Set<GroupBook> groupBooks = GroupEntity.getAll();
        Set<Categories> categories = CategoryEntity.getAll();

        for (TypeLanguage language : languages) {
            Set<GroupBook> temp = new LinkedHashSet<>();
            for (GroupBook group : groupBooks) {
                if (language.getId() == group.getId_language()) {
                    temp.add(group);
                }
            }
            langGroupMap.put(language, temp);
        }

        for (GroupBook group : groupBooks) {
            Set<Categories> temp = new LinkedHashSet<>();
            for (Categories cate : categories) {
                if (cate.getId_group() == group.getId()) {
                    temp.add(cate);
                }
            }
            groupCateMap.put(group, temp);
        }

        blogs = BlogEntity.getAll();
    }

    public Set<TypeLanguage> getLanguages() {
        return langGroupMap.keySet();
    }

    public Set<GroupBook> getGroupsByLanguage(TypeLanguage language) {
        return langGroupMap.get(language);
    }

    public Set<Categories> getCategoriesByGroup(GroupBook group) {
        return groupCateMap.get(group);
    }

    public Set<Blog> getBlogs() {
        return blogs;
    }


    // run test
    public static void main(String[] args) {
        Menu menu = Menu.getMenu();
        System.out.println(menu == null);
        menu.loadMenuFromDB();

        System.out.println(menu.getBlogs());
        System.out.println(menu.getLanguages());
        System.out.println(menu.getGroupsByLanguage((TypeLanguage) menu.getLanguages().iterator().next()));
        System.out.println(menu.getCategoriesByGroup((GroupBook) menu.getGroupsByLanguage((TypeLanguage) menu.getLanguages().iterator().next()).iterator().next()));
    }
}
