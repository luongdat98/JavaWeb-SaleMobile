package vn.edu.nlu.fit.model;

import vn.edu.nlu.fit.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Product {
    private int id;
    private String ten;
    private long gia;
    private String anh;
    private int soLuong;

    public Product(int id, String ten, long gia, String anh, int soLuong) {
        this.id = id;
        this.ten = ten;
        this.gia = gia;
        this.anh = anh;
        this.soLuong = soLuong;
    }
    public Product() {

    }
    public static Product find(String id) throws SQLException, ClassNotFoundException {
        String sql ="SELECT DISTINCT SP.MA_SP, SP.TEN_SP, SP.GIA, HA.LINK_ANH FROM sanpham AS SP, hinhanh AS HA, hang AS H WHERE SP.MA_SP= ? AND SP.MA_ANH = HA.MA_ANH AND SP.TRANGTHAI = 1;";
        PreparedStatement ps = ConnectionDB.getPrepareStatement(sql);
        ps.setInt(1, Integer.parseInt(id));
        ResultSet rs =ps.executeQuery();
        if(rs.next())
        {
            Product p = new Product();
            p.setId(rs.getInt(1));
            p.setTen(rs.getString(2));
            p.setGia(rs.getLong(3));
            p.setAnh(rs.getString(4));
            p.setSoLuong(1);
            return p;
        }
        return null;

    }

    public static Product find(String id, String img) throws SQLException, ClassNotFoundException {
        String sql ="SELECT DISTINCT SP.MA_SP, SP.TEN_SP, SP.GIA, HA.LINK_ANH FROM sanpham AS SP, hinhanh AS HA, hang AS H WHERE SP.MA_SP= ? AND SP.MA_ANH = HA.MA_ANH AND SP.TRANGTHAI = 1;";
        PreparedStatement ps = ConnectionDB.getPrepareStatement(sql);
        ps.setInt(1, Integer.parseInt(id));
        ResultSet rs =ps.executeQuery();
        if(rs.next())
        {
            Product p = new Product();
            p.setId(rs.getInt(1));
            p.setTen(rs.getString(2));
            p.setGia(rs.getLong(3));
            p.setAnh(img);
            p.setSoLuong(1);
            return p;
        }
        return null;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public long getGia() {
        return gia;
    }

    public void setGia(long gia) {
        this.gia = gia;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

}
