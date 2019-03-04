package controller;

import pojo.Medicine;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/pay")
public class PayController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();

        List<Medicine> medicines = (List<Medicine>)httpSession.getAttribute("medicine");

        for(Medicine m: medicines){
            httpSession.removeAttribute(m.getName());
        }
        resp.sendRedirect("home.jsp");
    }
}
