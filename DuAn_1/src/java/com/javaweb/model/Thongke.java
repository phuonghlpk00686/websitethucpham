package com.javaweb.model;
// Generated Dec 5, 2016 9:49:39 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Thongke generated by hbm2java
 */
public class Thongke  implements java.io.Serializable {


     private Integer mathongke;
     private String tenthongke;
     private Date thoigianthongke;
     private Date ngaybatdau;
     private Date ngayketthuc;
     private int soluongsanpham;
     private double tongtien;
     private String ghichu;

    public Thongke() {
    }

    public Thongke(String tenthongke, Date thoigianthongke, Date ngaybatdau, Date ngayketthuc, int soluongsanpham, double tongtien, String ghichu) {
       this.tenthongke = tenthongke;
       this.thoigianthongke = thoigianthongke;
       this.ngaybatdau = ngaybatdau;
       this.ngayketthuc = ngayketthuc;
       this.soluongsanpham = soluongsanpham;
       this.tongtien = tongtien;
       this.ghichu = ghichu;
    }
   
    public Integer getMathongke() {
        return this.mathongke;
    }
    
    public void setMathongke(Integer mathongke) {
        this.mathongke = mathongke;
    }
    public String getTenthongke() {
        return this.tenthongke;
    }
    
    public void setTenthongke(String tenthongke) {
        this.tenthongke = tenthongke;
    }
    public Date getThoigianthongke() {
        return this.thoigianthongke;
    }
    
    public void setThoigianthongke(Date thoigianthongke) {
        this.thoigianthongke = thoigianthongke;
    }
    public Date getNgaybatdau() {
        return this.ngaybatdau;
    }
    
    public void setNgaybatdau(Date ngaybatdau) {
        this.ngaybatdau = ngaybatdau;
    }
    public Date getNgayketthuc() {
        return this.ngayketthuc;
    }
    
    public void setNgayketthuc(Date ngayketthuc) {
        this.ngayketthuc = ngayketthuc;
    }
    public int getSoluongsanpham() {
        return this.soluongsanpham;
    }
    
    public void setSoluongsanpham(int soluongsanpham) {
        this.soluongsanpham = soluongsanpham;
    }
    public double getTongtien() {
        return this.tongtien;
    }
    
    public void setTongtien(double tongtien) {
        this.tongtien = tongtien;
    }
    public String getGhichu() {
        return this.ghichu;
    }
    
    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }




}


