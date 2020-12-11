package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.db.ConnectionDB;
import vn.edu.nlu.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

@WebServlet("/ServletDoLogin")
public class ServletDoLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
            String username = request.getParameter("user");
            String password = request.getParameter("pass");

            String query = "SELECT * FROM `user2` WHERE username = ? AND password = ? AND active = 1";
            PreparedStatement ps = ConnectionDB.getPrepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet result = ps.executeQuery();
            result.last();

            if(result.getRow() == 1){
                if(username.equals(result.getString("username")) && password.equals(result.getString("password"))){
                    User user = new User(result.getInt("id"), result.getString("username"), result.getString("password"), result.getInt("age"), result.getInt("active"));
                    session.setAttribute("User", user);
                    request.getRequestDispatcher("TrangChu.jsp").forward(request, response);
                }
                request.getRequestDispatcher("TrangChu.jsp").forward(request, response);
            }
            else {
                response.getWriter().println("Đăng nhập không thành công");
            }
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }
}
