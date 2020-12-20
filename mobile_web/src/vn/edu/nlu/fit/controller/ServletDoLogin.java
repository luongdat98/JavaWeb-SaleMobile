package vn.edu.nlu.fit.controller;

import vn.edu.nlu.fit.db.ConnectionDB;
import vn.edu.nlu.fit.model.Err;
import vn.edu.nlu.fit.model.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/ServletDoLogin")
public class ServletDoLogin extends HttpServlet {
    User user = new User();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Cách 1 : Không sử dụng AJAX.

            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession();
            // Lấy username và password ng dùng nhập ở trang login.
            String username = request.getParameter("user");
            String password = request.getParameter("pass");
            // Tạo câu lệnh query và đưa vào preparedStatement
            // PreparedStatement thực hiện nhiều câu lệnh query.
            String query = "SELECT * FROM user2 WHERE username = ? AND password = ? AND active = 1";
        try{
            PreparedStatement ps = ConnectionDB.getPrepareStatement(query);
            // Set các giá trị người dùng nhập vào đưa vào câu lệnh thực thi.
            ps.setString(1, username);
            ps.setString(2, password);
            // Tạo resultSet để thực hiện câu query.
            ResultSet result = ps.executeQuery();
            // Đưa về hàng cuối của data.
            result.last();
            // Sau đó thưc hiện so sánh username và password.
            if(result.getRow() == 1){ // getRow trả về tổng data từ dòng đầu tiên đến dòng hiện tại trong database.
                // So sánh
                if(username.equals(result.getString("username")) && password.equals(result.getString("password"))){
                    // Tạo ra session cho user đó
                    User user = new User(result.getInt("id"), result.getString("username"),
                            result.getString("password"), result.getString("name"), result.getInt("age"),
                            result.getString("address"), result.getString("email"), result.getDate("birthday"),
                            result.getInt("phone"), result.getInt("level"), result.getInt("active"));
                    if(user.getLevel() > 1){ // Nếu user > 1 tất là level 2 trở lên là admin thì vào trang của admin.
                        session.setAttribute("Admin", user);
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                    else {
                        if (user.getLevel() == 1){ // Nếu bằng 1 thì user là người dùng.
                            session.setAttribute("User", user);
                            request.getRequestDispatcher("TrangChu.jsp").forward(request, response);
                        }
                    }
                }
            }
            else {
                Err error = new Err();
                error.add("Sai tài khoản hoặc mật khẩu");
                session.setAttribute("Error", error);
                response.sendRedirect("DangNhapUser.jsp");
            }
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }



        // Cách 2: Sử dụng AJAX

//            HttpSession session = request.getSession();
//            request.setCharacterEncoding("UTF-8");
//            response.setCharacterEncoding("UTF-8");
//            String username = request.getParameter("user");
//            String password = request.getParameter("pass");
//            PrintWriter out = response.getWriter();
//            try{
//                user = userDao.checkLogin(username, password);
//                if(user != null && user.getLevel() > 1){
//                    session.setAttribute("User", user);
//                    request.getRequestDispatcher("TrangChu.jsp").forward(request, response);
//
//                } else{
//                    if(user != null && user.getLevel() == 1){
//                        session.setAttribute("User", user);
//                        request.getRequestDispatcher("test.html").forward(request, response);
//                }
//                    else {
//                        out.println("Đăng nhập thất bại");
////                        request.getRequestDispatcher("DangNhapUser.jsp").forward(request, response);
//                    }
//                }
//
//            }catch (ClassNotFoundException | SQLException e){
//                e.printStackTrace();
//            }
    }
    // Code test. Ko quan tâm.
//    request.setCharacterEncoding("UTF-8");
//            response.setCharacterEncoding("UTF-8");
//    String username = request.getParameter("user");
//    String password = request.getParameter("pass");
//    PrintWriter out = response.getWriter();
//
//            try{
//        user = userDao.checkLogin(username, password);
//        if(user != null) {
//            out.println("Đăng nhập thành công" + user.getUsername());
//        } else{
//            out.println("Đăng nhập thất bại");
}
