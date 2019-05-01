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
public class CustomerDAO {
    
//    Sign-up
    public boolean save(Customer s){
        
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
    
    public boolean checkCust(Customer c){
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

            String str = "From Customer where uname = :u_name";
            
            Query query = session.createQuery(str);
            
            query.setParameter("u_name", c.getUname());
            
            ArrayList<Customer> cl = (ArrayList<Customer>)query.list();
            
            if(cl==null ){
                
               flag=true;
               
            }
            else{
                
                flag=false;
                
            }

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
    
//    Login
     public boolean check(Customer c){
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

            String str = "From Customer where uname = :u_name and pass = :pwd";
            
            Query query = session.createQuery(str);
            
            query.setParameter("u_name", c.getUname());
            query.setParameter("pwd",c.getPass());
            
            ArrayList<Customer> cl = (ArrayList<Customer>)query.list();
            
            if(cl!=null && !cl.isEmpty()){
               flag=true;
            }
            else{
                flag=false;
            }

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
   
//    ....
     public ArrayList<Customer> getInfo(String uname){
         ArrayList<Customer> cl = null;
         Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();

            String str = "From Customer where uname = :u_name";
            
            Query query = session.createQuery(str);
            
            query.setParameter("u_name", uname);
            
            cl = (ArrayList<Customer>)query.list();
            
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
}
