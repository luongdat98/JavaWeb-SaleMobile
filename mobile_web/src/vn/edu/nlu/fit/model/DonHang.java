package vn.edu.nlu.fit.model;

public class DonHang {
    private int maDonHang;
    private String tenNguoiNhan;
    private String diaChiNguoiNhan;
    private String sdt;
    private Cart cart;
    private int trangThaiDon;
    private String ghiChu="";

    public int getTrangThaiDon() {
        return trangThaiDon;
    }

    public void setTrangThaiDon(int trangThaiDon) {
        this.trangThaiDon = trangThaiDon;
    }

    public DonHang(int maDonHang, String tenNguoiNhan, String diaChiNguoiNhan, String sdt, Cart cart, int trangThaiDon, String ghiChu) {
        this.maDonHang = maDonHang;
        this.tenNguoiNhan = tenNguoiNhan;
        this.diaChiNguoiNhan = diaChiNguoiNhan;
        this.sdt = sdt;
        this.cart = cart;
        this.trangThaiDon =trangThaiDon;
        this.ghiChu = ghiChu;
    }

    public DonHang() {
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public int getMaDonHang() {
        return maDonHang;
    }

    public void setMaDonHang(int maDonHang) {
        this.maDonHang = maDonHang;
    }

    public String getTenNguoiNhan() {
        return tenNguoiNhan;
    }

    public void setTenNguoiNhan(String tenNguoiNhan) {
        this.tenNguoiNhan = tenNguoiNhan;
    }

    public String getDiaChiNguoiNhan() {
        return diaChiNguoiNhan;
    }

    public void setDiaChiNguoiNhan(String diaChiNguoiNhan) {
        this.diaChiNguoiNhan = diaChiNguoiNhan;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
}
