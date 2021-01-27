package vn.edu.nlu.filter;

import vn.edu.nlu.beans.Role;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AdminFilter", urlPatterns = "/*")
public class AdminFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        String page = (String) request.getParameter("page");
        HttpSession session = request.getSession();

        if (page != null && page.contains("admin")) {
            if (session == null) {
                response.sendRedirect("default?page=home");
                return;
            }
            Role role = (Role) session.getAttribute("role");
            if (role == null || role.getId() == 6 ) {
                response.sendRedirect("default?page=home");
                return;
            }
        }

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        System.out.println("adminFilter start to work!");
    }

}
