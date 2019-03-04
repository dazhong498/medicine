package controller;


import pojo.Medicine;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.List;

@WebServlet("/addCartSession")
public class AddToCookie extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//
//        resp.addCookie(new Cookie());
        HttpSession httpSession = req.getSession();

        List<Medicine> medicines = (List<Medicine>)httpSession.getAttribute("medicine");
        String medName = null;
        for(Medicine medicine: medicines){
            if(medicine.getId() == Integer.parseInt(req.getParameter("medId"))){
                medName = medicine.getName();
            }
        }

        if(httpSession.getAttribute(medName) == null){
            httpSession.setAttribute(medName, 1);
        }else{
            httpSession.setAttribute(medName, (int)httpSession.getAttribute(medName) + 1);
        }

        Enumeration<String> stringEnumeration = httpSession.getAttributeNames();
        while(stringEnumeration.hasMoreElements()){
            String str = stringEnumeration.nextElement();
        }
        req.getRequestDispatcher("products").forward(req, resp);
    }


}
