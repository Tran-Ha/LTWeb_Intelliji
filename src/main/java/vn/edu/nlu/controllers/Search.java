package vn.edu.nlu.controllers;

import vn.edu.nlu.beans.*;
import vn.edu.nlu.entities.BookEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

@WebServlet(name = "Search", urlPatterns = "/Search")
public class Search extends HttpServlet {
    int currentPage=1;
    int bPerPage=12;

    int id_order=1;
    int id_price=-1;

    Collection<Book> list= new ArrayList<Book>();
    String uri="/Zoe/Search";
    String query="";
    int numPage=0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        checkType(request,response);

        String uri_query=(query!=""?uri+"?"+query:uri);
        request.setAttribute("uri_query",uri_query);

        request.setAttribute("tittlePage","Kết quả tìm kiếm");

        request.getRequestDispatcher("result.jsp").forward(request,response);
    }
    protected void checkType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type=request.getParameter("type");

        if(type==null)
            return;

        if (type.equals("pub")) searchPub(request, response);
        else if (type.equals("cat")) searchCat(request, response);
        else if (type.equals("group")) searchGroup(request, response);
        else if (type.equals("pub")) searchLang(request, response);
        else if (type.equals("key")) searchKey(request, response);

        if(list.size()>0)
            request.setAttribute("books",list);
        else {
            String no_found="Rất tiếc, không tìm thấy sản phẩm phù hợp với lựa chọn của bạn";
            request.setAttribute("no_found", no_found);
        }

        if(numPage>0)
            request.setAttribute("numPage",numPage);
    }

    private void searchPub(HttpServletRequest request, HttpServletResponse response) {
        sort(request,response);

        String id_pub1=request.getParameter("id_pub");
        int id_pub=(id_pub1!=null?Integer.parseInt(id_pub1):-1);

        query="type=pub&id_pub="+id_pub;

        list= BookEntity.getBooksByIdPub(id_pub,currentPage,bPerPage,id_order,id_price).values();

        int total=BookEntity.getTotalByIdPub(id_pub,id_price);
        numPage=(total%bPerPage>0?(total/bPerPage)+1:(total/bPerPage));
        
    }

    private void searchCat(HttpServletRequest request, HttpServletResponse response) {
        sort(request,response);

        String id_cat1=request.getParameter("id_cat");
        int id_cat=(id_cat1!=null?Integer.parseInt(id_cat1):-1);

        query="type=cat&id_cat="+id_cat;

        list= BookEntity.getBooksByIdCat(id_cat,currentPage,bPerPage,id_order,id_price).values();

        int total=BookEntity.getTotalByIdCat(id_cat,id_price);
        numPage=(total%bPerPage>0?(total/bPerPage)+1:(total/bPerPage));

    }

    private void searchLang(HttpServletRequest request, HttpServletResponse response) {
        sort(request,response);

        String id_lang1=request.getParameter("id_lang");
        int id_lang=(id_lang1!=null?Integer.parseInt(id_lang1):-1);

        query="type=lang&id_lang="+id_lang;

        list= BookEntity.getBooksByIdLang(id_lang,currentPage,bPerPage,id_order,id_price).values();

        int total=BookEntity.getTotalByIdLang(id_lang,id_price);
        numPage=(total%bPerPage>0?(total/bPerPage)+1:(total/bPerPage));

    }
    private void searchGroup(HttpServletRequest request, HttpServletResponse response) {
        sort(request,response);

        String id_group1=request.getParameter("id_group");
        int id_group=(id_group1!=null?Integer.parseInt(id_group1):-1);

        query="type=group&id_group="+id_group;

        list= BookEntity.getBooksByIdGroup(id_group,currentPage,bPerPage,id_order,id_price).values();

        int total=BookEntity.getTotalByIdGroup(id_group,id_price);
        numPage=(total%bPerPage>0?(total/bPerPage)+1:(total/bPerPage));

    }
    private void searchKey(HttpServletRequest request, HttpServletResponse response) {

    }
    private void sort(HttpServletRequest request, HttpServletResponse response) {
        String cPage= request.getParameter("cPage");
        currentPage=(cPage!=null?Integer.parseInt(cPage):currentPage);
        request.setAttribute("currentPage",currentPage);

        String id_price1= request.getParameter("id_price");
        id_price=(id_price1!=null?Integer.parseInt(id_price1):id_price);

        String id_order1= request.getParameter("id_order");
        id_order=(id_order1!=null?Integer.parseInt(id_order1):id_order);

        String bPerPage1= request.getParameter("bPerPage");
        bPerPage=(bPerPage1!=null?Integer.parseInt(bPerPage1):bPerPage);

    }

}
