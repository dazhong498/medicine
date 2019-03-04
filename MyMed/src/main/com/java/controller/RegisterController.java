package controller;

import pojo.User;
import repository.UserRepository;
import repository.UserRepositoryImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/registerUser")
public class RegisterController extends HttpServlet {

    UserRepository userRepository = new UserRepositoryImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        user.setUserName(req.getParameter("userName"));
        user.setPassword(req.getParameter("password"));
        user.setEmail(req.getParameter("email"));
        user.setPhoneNumber(req.getParameter("phoneNumber"));

        user = userRepository.addUser(user);

        HttpSession httpSession = req.getSession();
        httpSession.setAttribute("user", user);

        System.out.println(user);
        resp.sendRedirect("home.jsp");
    }
}
