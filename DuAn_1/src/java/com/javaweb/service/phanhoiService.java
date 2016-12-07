/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.HibernateUtil.HibernateUtil;
import com.javaweb.model.Phanhoi;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dell
 */
public class phanhoiService {
    public ArrayList<Phanhoi> getAllPhanhoi(int pageSize, int pageNumber) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList listPhanhoi = new ArrayList<Phanhoi>();

        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Phanhoi");
            usercount = query.list().size();
            query = query.setFirstResult(pageSize * (pageNumber - 1));
            query.setMaxResults(pageSize);
            listPhanhoi = (ArrayList) query.list();

            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }

        } finally {
            session.close();
        }

        return listPhanhoi;
    }
    public int usercount = 0;
    public boolean XoaPhanhoi(int idph) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            Phanhoi KH = new Phanhoi();
            KH.setMaphanhoi(idph);
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
