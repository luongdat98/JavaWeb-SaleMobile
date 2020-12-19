package vn.edu.nlu.fit.model;

import java.util.ArrayList;

public class Err {
    private ArrayList<String> error;

    public Err(ArrayList<String> loi) {
        this.error = error;
    }

    public Err(){
        error = new ArrayList<>();
    }

    public ArrayList<String> getLoi() {
        return error;
    }

    public ArrayList<String> add(String s)
    {
        this.error.add(s);
        return error;
    }
}
