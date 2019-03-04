package controller;

import pojo.Medicine;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@WebServlet("/checkOutControl")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession httpSession = req.getSession();

        List<Medicine> medicines = (List<Medicine>) httpSession.getAttribute("medicine");


        Map<Medicine, Integer> map = new TreeMap<>();

        Enumeration<String> names = httpSession.getAttributeNames();
        while(names.hasMoreElements()){
            String name = names.nextElement();
            for(Medicine medicine: medicines){
                if(medicine.getName().equals(name)){
                    map.put(medicine, (int)httpSession.getAttribute(name));
                    break;
                }
            }
        }

        httpSession.setAttribute("cart", map);
        resp.sendRedirect("checkOut");
    }
}
