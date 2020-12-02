package vn.edu.nlu.fit.model;

public class UserDemo {
    int id;
    String name;
    int level;
    String sdt;
    String diaChi;
    String email;

    public UserDemo() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public UserDemo(int id, String name, int level, String sdt, String diaChi, String email) {
        super();
        this.id = id;
        this.name = name;
        this.level = level;
        this.sdt = sdt;
        this.diaChi = diaChi;
        this.email =email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}
