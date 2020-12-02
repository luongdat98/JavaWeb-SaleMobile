package vn.edu.nlu.fit.model;

import java.util.ArrayList;

public class Err {
    private ArrayList<String> loi;

    public Err(ArrayList<String> loi) {
        this.loi = loi;
    }

    public Err(){
        loi = new ArrayList<>();
    }

    public ArrayList<String> getLoi() {
        return loi;
    }

    public ArrayList<String> add(String s)
    {
        this.loi.add(s);
        return loi;
    }
}
