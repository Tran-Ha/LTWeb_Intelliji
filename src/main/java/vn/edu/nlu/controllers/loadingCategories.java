package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.Categories;
import vn.edu.nlu.beans.*;
import vn.edu.nlu.entities.BookEntity;
import vn.edu.nlu.entities.GroupEntity;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "loadingCategories", urlPatterns = "/loadingCategories")
public class loadingCategories extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<GroupBook> groups = GroupEntity.getGroups();
        ArrayList<Publication> pubs = be.getPublications();

        String group = request.getParameter("group");
        String pub = request.getParameter("pub");

        String down = request.getParameter("down");
        String up = request.getParameter("up");

        if(group!=null){
            int id_group = Integer.parseInt(group);
            ArrayList<Book> books = be.getBooksByGroup(id_group);
            request.setAttribute("books", books);
        }
        if(pub!=null){
            int id_pub = Integer.parseInt(pub);
            ArrayList<Book> books = be.getBooksByPub(id_pub);
            request.setAttribute("books", books);
        }
        if(down!=null && up!=null){
            int downPrice=(down!=null?Integer.parseInt(down):0);
            int upPrice=(up!=null? Integer.parseInt(up):500000);

            ArrayList<Book> books = be.getBooksFromAToBPrice(downPrice,upPrice);
            request.setAttribute("books", books);
        }

        request.setAttribute("groups", groups);
        request.setAttribute("pubs", pubs);

        request.getRequestDispatcher("result.jsp").forward(request,response);
    }
}
