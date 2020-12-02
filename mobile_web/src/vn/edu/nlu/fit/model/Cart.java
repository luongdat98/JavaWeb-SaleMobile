package vn.edu.nlu.fit.model;

import java.util.ArrayList;

public class Cart {
    private ArrayList<Product> dsSP;

    public Cart(ArrayList<Product> dsSP) {
        this.dsSP = dsSP;
    }
    public Cart() {
        ArrayList<Product> dsSP = new ArrayList<>();
        this.dsSP = dsSP;
    }
    public ArrayList<Product> add(Product p)
    {
        if(this.getDsSP().size()==0)
        {
            this.dsSP.add(p);
        }
        else if(this.getDsSP().size()>0)
        {
            boolean flag = true;
            for(int i =0;i<this.getDsSP().size();i++)
            {
                Product p0 = this.getDsSP().get(i);
                if(p.getId()==p0.getId()&&p.getAnh().equals(p0.getAnh()))
                {
                    flag =false;
                    int soLuong = this.getDsSP().get(i).getSoLuong();
                    this.getDsSP().get(i).setSoLuong(soLuong+1);
                    break;
                }
            }
            if(flag==true)
            {
                this.dsSP.add(p);
            }
        }
        return this.dsSP;
    }
    public ArrayList<Product> delete(Product p)
    {
        this.dsSP.remove(p);
        return this.dsSP;
    }

    public ArrayList<Product> getDsSP() {
        return dsSP;
    }

    public void setDsSP(ArrayList<Product> dsSP) {
        this.dsSP = dsSP;
    }

    public int getSoSP() {
        int sum =0;
        for (Product p :dsSP)
        {
            sum += p.getSoLuong();
        }
        return sum;
    }
    public long tongTien()
    {
        long sum =0;
        for (Product p :dsSP)
        {
            sum += p.getGia()*p.getSoLuong();
        }
        return sum;
    }
}
