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

@WebServlet("/ServletTrangChu")
public class ServletTrangChu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");


        String sql = "SELECT DISTINCT SP.TEN_SP, SP.GIA, HA.LINK_ANH, KM.MUC_KM,SP.MA_SP FROM sanpham AS SP, hinhanh AS HA, hang AS H, khuyenmai AS KM WHERE SP.MA_KM = 1 AND SP.MA_ANH = HA.MA_ANH AND SP.TRANGTHAI = 1 AND SP.MAHANG = H.MAHANG AND SP.MA_KM=KM.MA_KM;";
        String sql2 = "SELECT DISTINCT SP.TEN_SP, SP.GIA, HA.LINK_ANH, KM.MUC_KM,SP.MA_SP FROM sanpham AS SP, hinhanh AS HA, hang AS H, khuyenmai AS KM WHERE SP.NAM_SX = 2019 AND SP.MA_ANH = HA.MA_ANH AND SP.TRANGTHAI = 1 AND SP.MAHANG = H.MAHANG AND SP.MA_KM=KM.MA_KM  ORDER BY SP.MA_SP DESC LIMIT 12;";
        try {
            PreparedStatement ps = ConnectionDB.getPrepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            request.setAttribute("rs", rs);
            PreparedStatement ps2 = ConnectionDB.getPrepareStatement(sql2);
            ResultSet rs2 = ps2.executeQuery();
            request.setAttribute("rs2", rs2);
            request.getRequestDispatcher("TrangChu.jsp").forward(request,response);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
