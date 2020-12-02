package vn.edu.nlu.fit.db;

import java.sql.*;

public class ConnectionDB {
    static Connection con;

    // PreparedStatement dùng để thực hiện nhiều câu lệnh query cho ra nhiều result.
    public static PreparedStatement getPrepareStatement (String sql) throws SQLException, ClassNotFoundException {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cuoikyfinal?useUnicode=true&characterEncoding=utf-8", "root", "");

        }
        return con.prepareCall(sql);
    }

    // Statement dùng để thực hiện 1 câu lệnh query và cho ra 1 result.
    public static Statement connect() throws ClassNotFoundException, SQLException  {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cuoikyfinal?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }

    }

    public static Connection getConnection() {
        Connection cons = null;
        String sql = "jdbc:mysql://localhost:3306/cuoikyfinal";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cons = DriverManager.getConnection(sql, "root", "");
            System.out.println("kêt nối thành công");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }

    // Hàm main dùng để test kết nối db đc chưa. Nếu connect đc r thì comment lại.
//    public static void main(String[] args) throws Exception {
//        Statement s = ConnectionDB.connect();
//        ResultSet rs = s.executeQuery("select * from user");
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//        while (rs.next()) {
//            System.out.println(rs.getString(2));
//        }
//    }
}
