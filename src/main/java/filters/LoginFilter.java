package filters;

import database.DBManager;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        if (req.getSession().getAttribute("isLogin") == "true") {
                req.getRequestDispatcher("/").forward(req, resp);
        }else{
            req.getRequestDispatcher("WEB-INF/jsp/login.jsp").forward(req, resp);
        }
        filterChain.doFilter(req, resp);
    }

    @Override
    public void destroy() {

    }
}
