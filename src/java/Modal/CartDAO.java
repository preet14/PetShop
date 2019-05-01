/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author user
 */
public class CartDAO {
    
    public boolean save(Cart s){
        boolean flag = false;
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();
            
            session.save(s);
 
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
    
    public int cartSize(String username){
        
        int c=0;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction(); 
            
            Query query = session.createQuery("From Cart where usname= :u_name");
            
            query.setParameter("u_name",username);
            
            ArrayList<Pet> pl = (ArrayList<Pet>)query.list();
            
            tx.commit();
            
            if(pl!=null && !pl.isEmpty()){
                c = pl.size();
            }
            else{
                c=0;
            }

        }
        catch(Exception e1){
                        
            System.out.println("Error"+e1);
            
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        return c;
    }
    
    public ArrayList<Cart> getAllCartItems(){
        ArrayList<Cart> cl = null;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();

            String str = "From Cart";
            
            Query query = session.createQuery(str);

            cl = (ArrayList<Cart>)query.list();
            
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
        return cl;
    }
    
//    delete
    public boolean deleteCart(String breed,int age,String uname){
        boolean flag=false;
        
        ArrayList<Cart> cl = null;
        
        Configuration cf = null;
        
        SessionFactory sf = null;
        
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();

            String str = "delete From Cart c where c.breed= :br_ed and c.age= :ages";
            
            Query query = session.createQuery(str);

            query.setParameter("br_ed",breed);
            
            query.setParameter("ages",age);
            
            query.executeUpdate();
            
            Query query1 = session.createQuery("From Cart c where c.breed= :br_ed and c.age= :ages");
            
            query1.setParameter("br_ed",breed);
            
            query1.setParameter("ages",age);
            
            cl= (ArrayList<Cart>) query1.list();
            
            if(cl!=null && !cl.isEmpty()){
                flag=false;
            }
            else{
                flag=true;
            }
            
            tx.commit();

        }
        catch(Exception e1){
            
            System.out.println("Error"+e1);
            flag=false;
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        
        return flag;
    }
    
    public boolean deleteAllCart(){
        boolean flag=false;
        
        ArrayList<Cart> cl = null;
        
        Configuration cf = null;
        
        SessionFactory sf = null;
        
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();

            String str = "delete From Cart";
            
            Query query = session.createQuery(str);

            query.executeUpdate();
            
            Query query1 = session.createQuery("From Cart");
            
            cl= (ArrayList<Cart>) query1.list();
            
            flag = !(cl!=null && !cl.isEmpty());
            
            tx.commit();

        }
        catch(Exception e1){
            
            System.out.println("Error"+e1);
            flag=false;
            e1.printStackTrace();
        }
        finally{
            
            session.close();

            sf.close();
        }
        
        return flag;
    }
}
