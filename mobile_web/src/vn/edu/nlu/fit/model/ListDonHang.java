package vn.edu.nlu.fit.model;

import java.util.ArrayList;

public class ListDonHang {
    private ArrayList<DonHang> dsDH;
    public ListDonHang(ArrayList<DonHang> dsDH) {
        this.dsDH = dsDH;
    }
    public ListDonHang() {
        ArrayList<DonHang> dsDH = new ArrayList<>();
        this.dsDH = dsDH;
    }
    public ArrayList<DonHang> add(DonHang donHang)
    {
        this.dsDH.add(donHang);

        return this.dsDH;
    }
    public ArrayList<DonHang> delete(DonHang donHang)
    {
        this.dsDH.remove(donHang);

        return this.dsDH;
    }

    public ArrayList<DonHang> getDsDH() {
        return dsDH;
    }

    public void setDsSP(ArrayList<DonHang> dsDH) {
        this.dsDH = dsDH;
    }
}
