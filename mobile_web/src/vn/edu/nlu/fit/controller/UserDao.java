//package vn.edu.nlu.fit.controller;
//
//import vn.edu.nlu.fit.db.ConnectionDB;
//import vn.edu.nlu.fit.model.User;
//
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//public class UserDao {
//
//    public UserDao() {
//    }
//
//    // Phương thức checkLogin để kiểm tra đăng nhập của username và password trong database.
//    // Sử dụng username và password lấy từ form.
//    public User checkLogin(String username, String password) throws SQLException, ClassNotFoundException {
//        User user = null;
//        String query = "SELECT * FROM user2 WHERE username = ? AND password = ? AND active = 1";
//        PreparedStatement ps = ConnectionDB.getPrepareStatement(query);
//        ps.setString(1, username);
//        ps.setString(2, password);
//
//        ResultSet result = ps.executeQuery();
//        if(result.next()){
//            user = new User(result.getInt("id"), result.getString("username"),
//                            result.getString("password"), result.getString("name"), result.getInt("age"),
//                            result.getString("address"), result.getString("email"), result.getDate("birthday"),
//                            result.getInt("phone"), result.getInt("level"), result.getInt("active"));
//        }
//
//        return user;
//    }
//
//    public static void main(String[] args) throws SQLException, ClassNotFoundException{
//        User u;
//        u = new UserDao().checkLogin("admin", "admin123");
//        System.out.println(u);
//    }
//}
