package com.javaweb.model;
// Generated Dec 5, 2016 9:49:39 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Baidang generated by hbm2java
 */
public class Baidang  implements java.io.Serializable {


     private Integer mabaidang;
     private String tenbaidang;
     private String tennguoidang;
     private Date ngaydang;
     private String noidung;
     private String mota;

    public Baidang() {
    }

	
    public Baidang(String tenbaidang, String tennguoidang, Date ngaydang, String noidung) {
        this.tenbaidang = tenbaidang;
        this.tennguoidang = tennguoidang;
        this.ngaydang = ngaydang;
        this.noidung = noidung;
    }
    public Baidang(String tenbaidang, String tennguoidang, Date ngaydang, String noidung, String mota) {
       this.tenbaidang = tenbaidang;
       this.tennguoidang = tennguoidang;
       this.ngaydang = ngaydang;
       this.noidung = noidung;
       this.mota = mota;
    }
   
    public Integer getMabaidang() {
        return this.mabaidang;
    }
    
    public void setMabaidang(Integer mabaidang) {
        this.mabaidang = mabaidang;
    }
    public String getTenbaidang() {
        return this.tenbaidang;
    }
    
    public void setTenbaidang(String tenbaidang) {
        this.tenbaidang = tenbaidang;
    }
    public String getTennguoidang() {
        return this.tennguoidang;
    }
    
    public void setTennguoidang(String tennguoidang) {
        this.tennguoidang = tennguoidang;
    }
    public Date getNgaydang() {
        return this.ngaydang;
    }
    
    public void setNgaydang(Date ngaydang) {
        this.ngaydang = ngaydang;
    }
    public String getNoidung() {
        return this.noidung;
    }
    
    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }




}


