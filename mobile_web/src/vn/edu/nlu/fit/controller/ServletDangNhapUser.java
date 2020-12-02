package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.db.ConnectionDB;
import vn.edu.nlu.fit.filter.Util;
import vn.edu.nlu.fit.model.Err;
import vn.edu.nlu.fit.model.UserDemo;

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

@WebServlet("/ServletDangNhapUser")
public class ServletDangNhapUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        // Lấy thuộc tính name bên trang jsp.
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        HttpSession session = request.getSession();
//        String sql = "Select iduser, username,password,level,sdt,diachi,email from user where username= ? and password = ?";
        String sql = "Select * from user where username= ? and password = ?";
        try {
            PreparedStatement ps = ConnectionDB.getPrepareStatement(sql);
            ps.setString(1,user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            rs.last();
            if (rs.getRow() == 1) {
                // từ hàng đầu tiên đến hàng cuối cùng
                if(user.equals(rs.getString("username")) && pass.equals(rs.getString("password"))&&rs.getInt("level")>=1)
                {
                    UserDemo u = new UserDemo();
                    u.setId(rs.getInt(1));
                    u.setName(rs.getString(2));
                    u.setLevel(rs.getInt(4));
                    u.setSdt(rs.getString(5));
                    u.setDiaChi(rs.getString(6));
                    u.setEmail(rs.getString(7));

                    session.setAttribute("Su",u);
//                    Util fl = new Util();
//                    response.sendRedirect(fl.fullLink("TrangChu.jsp"));
                    request.getRequestDispatcher("test.html").forward(request, response);

                }
                else
                {
//                    response.getWriter().println("Tài khoản của bạn hiện đang bị khóa");
                    Err err = new Err();
                    err.add("Tài khoản của bạn hiện đang bị khóa hoặc chưa kích hoạt!!!");
                    session.setAttribute("errDNU",err);
//                response.getWriter().println("Sai tài khoản hoặc mật khẩu!!!");
                    Util fl = new Util();
                    response.sendRedirect(fl.fullLink("DangNhapUser.jsp"));

                }
            } else {
                Err err = new Err();
                err.add("  Sai tài khoản hoặc mật khẩu!!!");
                session.setAttribute("errDNU",err);
//                response.getWriter().println("Sai tài khoản hoặc mật khẩu!!!");
                Util fl = new Util();

                response.sendRedirect(fl.fullLink("DangNhapUser.jsp"));

            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
