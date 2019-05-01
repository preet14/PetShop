/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.Query;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author user
 */
public class OrderDAO {
    
    public boolean save(OrdersTable o){
        boolean flag=false;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            session.save(o);
 
            flag=true;

            tx.commit();

        }
        catch(Exception e1){
            
            flag=false;
            
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return flag;
    }
//    Order details
    
    public ArrayList<OrdersTable> getAllOrders(){
        
        ArrayList<OrdersTable> od = null;
        
        Configuration cf = null;
        
        SessionFactory sf = null;
        
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("From OrdersTable where permission= :prms or permission= :prm");
                        
            query.setParameter("prms","NULL");
            
            query.setParameter("prm","granted");
            
            od = (ArrayList<OrdersTable>)query.list();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return od;
    }
    
    public ArrayList<OrdersTable> getOrders(String uname){
        ArrayList<OrdersTable> od = null;
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("From OrdersTable where uname= :u_name and permission= :prms or permission= :prm");
            
            query.setParameter("u_name",uname);
            
            query.setParameter("prms","NULL");
            
            query.setParameter("prm","granted");
            
            od = (ArrayList<OrdersTable>)query.list();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return od;
    }
    
    public ArrayList<OrdersTable> getOrdersDeliver(String uname){
        ArrayList<OrdersTable> od = null;
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("From OrdersTable where uname= :u_name and permission= :prms or permission= :prm");
            
            query.setParameter("u_name",uname);
            
            query.setParameter("prms","delivered");
            
            query.setParameter("prm","granted");
            
            od = (ArrayList<OrdersTable>)query.list();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return od;
    }
    
    public ArrayList<OrdersTable> getAllOrdersDeliver(){
        ArrayList<OrdersTable> od = null;
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("From OrdersTable where permission= :prms or permission= :prm");
                        
            query.setParameter("prms","granted");
            
            query.setParameter("prm","delivered");
            
            od = (ArrayList<OrdersTable>)query.list();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return od;
    }


//    Orders State Change
    public boolean updateOrdersGranted(String uname,String breed,String age,String gender){
        
        ArrayList<OrdersTable> od = null;
        boolean flag=false;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("update OrdersTable r set permission= :permit where r.uname= :u_name and r.breed= :br_ed and age= :ag and gender= :gen");
            
            query.setParameter("permit","granted");
            
            query.setParameter("u_name",uname);
                        
            query.setParameter("br_ed",breed);
            
            query.setParameter("ag",Integer.parseInt(age));
            
            query.setParameter("gen",gender);
            
            query.executeUpdate();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return flag;
    }
    
    public boolean updateOrdersDeliver(String uname,String breed,String age,String gender){
        
        ArrayList<OrdersTable> od = null;
        boolean flag=false;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("update OrdersTable r set permission= :permit where r.uname= :u_name and r.breed= :br_ed and age= :ag and gender= :gen");
            
            query.setParameter("permit","delivered");
            
            query.setParameter("u_name",uname);
                        
            query.setParameter("br_ed",breed);
            
            query.setParameter("ag",Integer.parseInt(age));
            
            query.setParameter("gen",gender);
            
            query.executeUpdate();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return flag;
    }

    
//    delete orders
    
    public boolean deleteOrders(String uname,String breed,String age,String gender){
        
        ArrayList<OrdersTable> od = null;
        boolean flag=false;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            Query query = session.createQuery("delete from OrdersTable r where r.uname= :u_name and r.breed= :br_ed and age= :ag and gender= :gen");
            
            query.setParameter("permit","granted");
            
            query.setParameter("u_name",uname);
                        
            query.setParameter("br_ed",breed);
            
            query.setParameter("ag",Integer.parseInt(age));
            
            query.setParameter("gen",gender);
            
            query.executeUpdate();
            
            tx.commit();

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return flag;
    }


    
}
