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


@WebServlet("/loginUser")
public class LoginUserController extends HttpServlet {

    UserRepository userRepository = new UserRepositoryImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        user.setUserName(req.getParameter("userName"));
        user.setPassword(req.getParameter("password"));

        user = userRepository.loginUser(user);

        if(user == null){
            resp.sendRedirect("login");
        }else{
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("user", user);
            resp.sendRedirect("home.jsp");
        }

    }
}
