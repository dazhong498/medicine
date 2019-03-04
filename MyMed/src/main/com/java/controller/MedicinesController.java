package controller;

import pojo.Medicine;
import repository.MedicineRepository;
import repository.MedicinesRepositoryImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebEndpoint;
import java.io.IOException;
import java.util.List;

@WebServlet("/getProducts")
public class MedicinesController extends HttpServlet {

    MedicineRepository medicineRepository = new MedicinesRepositoryImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Medicine> medicineList = medicineRepository.getAllMedicines();
        HttpSession httpSession = req.getSession();
        httpSession.setAttribute("medicine", medicineList);

        req.setAttribute("products", medicineList);
        req.getRequestDispatcher("products").forward(req, resp);

    }
}
