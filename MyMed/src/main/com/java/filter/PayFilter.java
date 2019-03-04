package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebFilter("/pay")
public class PayFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

         HttpServletRequest req= (HttpServletRequest)request;

         HttpSession httpSession = req.getSession();
        if(httpSession.getAttribute("user") == null){
            HttpServletResponse resp = (HttpServletResponse) response;
            resp.sendRedirect("login");
        }else{
            chain.doFilter(request, response);
        }

    }

}
