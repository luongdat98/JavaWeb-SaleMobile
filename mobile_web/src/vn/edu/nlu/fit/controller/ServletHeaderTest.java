package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.db.ConnectionDB;

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

@WebServlet(name = "ServletHeaderTest")
public class ServletHeaderTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String sql1 = "SELECT DISTINCT SP.MA_SP, SP.TEN_SP, SP.GIA, HA.LINK_ANH FROM sanpham AS SP, hinhanh AS HA WHERE SP.MA_ANH = HA.MA_ANH AND SP.TRANGTHAI=1;";
        try {
            PreparedStatement ps1 = ConnectionDB.getPrepareStatement(sql1);
            ResultSet rs9 = ps1.executeQuery();
            request.setAttribute("rs9", rs9);
            request.getRequestDispatcher("HeaderTest.jsp").include(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}
