package vn.edu.nlu.fit.controller.admin;

import vn.edu.nlu.fit.db.ConnectionDB;
import vn.edu.nlu.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ServletManageUser")
public class ServletManageUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String query = "SELECT * FROM user2 WHERE active = 1";
        HttpSession session = request.getSession();
        try{
            PreparedStatement ps = ConnectionDB.getPrepareStatement(query);
            ResultSet result = ps.executeQuery();
            request.setAttribute("Result", result);
            request.getRequestDispatcher("manage_user.jsp").forward(request, response);

        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }
}
