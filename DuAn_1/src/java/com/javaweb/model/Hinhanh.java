package com.javaweb.model;
// Generated Dec 5, 2016 9:49:39 AM by Hibernate Tools 4.3.1



/**
 * Hinhanh generated by hbm2java
 */
public class Hinhanh  implements java.io.Serializable {


     private Integer maanh;
     private String tieudeanh;
     private byte[] hinhanh;
     private int masanpham;

    public Hinhanh() {
    }

    public Hinhanh(String tieudeanh, byte[] hinhanh, int masanpham) {
       this.tieudeanh = tieudeanh;
       this.hinhanh = hinhanh;
       this.masanpham = masanpham;
    }
   
    public Integer getMaanh() {
        return this.maanh;
    }
    
    public void setMaanh(Integer maanh) {
        this.maanh = maanh;
    }
    public String getTieudeanh() {
        return this.tieudeanh;
    }
    
    public void setTieudeanh(String tieudeanh) {
        this.tieudeanh = tieudeanh;
    }
    public byte[] getHinhanh() {
        return this.hinhanh;
    }
    
    public void setHinhanh(byte[] hinhanh) {
        this.hinhanh = hinhanh;
    }
    public int getMasanpham() {
        return this.masanpham;
    }
    
    public void setMasanpham(int masanpham) {
        this.masanpham = masanpham;
    }




}


