package controller;

import pojo.Medicine;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

@WebServlet("/viewProductDetail")
public class ViewProductDetailController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Medicine medicine = null;
        HttpSession httpSession = req.getSession();

        List<Medicine> medicines = (List<Medicine>) httpSession.getAttribute("medicine");

        for(Medicine med: medicines){
            if (med.getId() == Integer.parseInt(req.getParameter("medId"))){
                medicine = med;
                break;
            }
        }
        httpSession.setAttribute("currentMed", medicine);
        resp.sendRedirect("viewDetail");
    }
}
