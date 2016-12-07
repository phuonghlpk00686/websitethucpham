/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.HibernateUtil.HibernateUtil;
import com.javaweb.model.Khachhang;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dell
 */
public class khachhangService {

    public boolean InsertKhachHang(Khachhang KH) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(KH);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            } else {
                System.out.println(e.toString());
            }
        } finally {
            session.close();
        }
        return false;
    }

    public boolean CheckLogin(String GiaTriNhap, String MatKhau) {
        Khachhang KH = GetUserByEmailOrUserName(GiaTriNhap);
        if (KH != null) {
            if (KH.getPassword().equals(MatKhau)) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public Khachhang GetUserByEmailOrUserName(String GiaTriNguoiDungNhap) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from Khachhang where Username = '" + GiaTriNguoiDungNhap + "'";
            Query query = session.createQuery(strQuery);
            Khachhang KH = (Khachhang) query.uniqueResult();
            tx.commit();
            return KH;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }

    public Khachhang GetUserById(String MaKh) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from Khachhang where Makhachhang = " + MaKh;
            Query query = session.createQuery(strQuery);
            Khachhang KH = (Khachhang) query.uniqueResult();
            tx.commit();
            return KH;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }

    public ArrayList<Khachhang> getAllKhachhang(int pageSize, int pageNumber) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listKhachhang = new ArrayList<Khachhang>();

        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Khachhang");
            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);
            listKhachhang = (ArrayList) query.list();

            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }

        } finally {
            session.close();
        }

        return listKhachhang;
    }
    public int usercount = 0;

    public ArrayList<Khachhang> SearchKhachhang(int pageSize, int pageNumber, String key) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listKhachhang = new ArrayList<Khachhang>();

        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Khachhang where UserName like '%" + key + "%'");

            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);
            listKhachhang = (ArrayList) query.list();

            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }

        } finally {
            session.close();
        }

        return listKhachhang;
    }
    //Xoa KhachHang 

    public boolean XoaKhachHang(int idkh) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            Khachhang KH = new Khachhang();
            KH.setMakhachhang(idkh);
            session.delete(KH);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return false;
    }
}
