//package vn.edu.nlu.fit.controller;
//
//import vn.edu.nlu.fit.db.ConnectionDB;
//import vn.edu.nlu.fit.filter.Util;
//import vn.edu.nlu.fit.model.Err;
//import vn.edu.nlu.fit.model.User;
//import vn.edu.nlu.fit.model.UserDemo;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//@WebServlet("/ServletDangNhapUser")
//public class ServletDangNhapUser extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
////        HttpSession session = request.getSession();
////        String sql = "Select iduser, username,password,level,sdt,diachi,email from user where username= ? and password = ?";
////        String sql = "Select * from user where username= ? and password = ?";
//        try {
//            request.setCharacterEncoding("UTF-8");
//            response.setCharacterEncoding("UTF-8");
//            response.setContentType("text/html;charset=UTF-8");
//            // Lấy thuộc tính name bên trang jsp.
//            String username = request.getParameter("user");
//            String password = request.getParameter("pass");
////            String query = "SELECT * FROM `user2` WHERE username = \""+username+"\" AND password = \""+password+"\" AND active = 1";
//
//            response.getWriter().println("Đăng nhập thành công");
////            PreparedStatement ps = ConnectionDB.getPrepareStatement(query);
////            ps.setString(1, username);
////            ps.setString(2, password);
////            ResultSet rs = ps.executeQuery();
////            rs.last();
////            if (rs.getRow() == 1) {
////                // từ hàng đầu tiên đến hàng cuối cùng
////                if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
////                {
////                    User u = new User();
////                    u.setId(rs.getInt(1));
////                    u.setUsername(rs.getString(2));
////                    u.setPassword(rs.getString(3));
////                    u.setAge(rs.getInt(4));
////                    u.setActive(rs.getInt(5));
////
//////                    session.setAttribute("Su",u);
//////                    Util fl = new Util();
//////                    response.sendRedirect(fl.fullLink("TrangChu.jsp"));
//////                    request.getRequestDispatcher("").forward(request, response);
////                    response.getWriter().println("Đăng nhập thành công");
//////                    response.sendRedirect("TrangChu.jsp");
////                }
////                else
////                {
////                    response.getWriter().println("Đăng nhập thất bại");
//////                    response.getWriter().println("Tài khoản của bạn hiện đang bị khóa");
//////                    Err err = new Err();
//////                    err.add("Tài khoản của bạn hiện đang bị khóa hoặc chưa kích hoạt!!!");
////////                    session.setAttribute("errDNU",err);
////////                response.getWriter().println("Sai tài khoản hoặc mật khẩu!!!");
//////                    Util fl = new Util();
//////                    response.sendRedirect(fl.fullLink("DangNhapUser.jsp"));
////
////                }
////            }
////            else {
////                Err err = new Err();
////                err.add("  Sai tài khoản hoặc mật khẩu!!!");
//////                session.setAttribute("errDNU",err);
//////                response.getWriter().println("Sai tài khoản hoặc mật khẩu!!!");
////                Util fl = new Util();
////
////                response.sendRedirect(fl.fullLink("DangNhapUser.jsp"));
////
//
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
