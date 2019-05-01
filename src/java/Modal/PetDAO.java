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
public class PetDAO {
    
    
    public boolean save(Pet s){
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
    
//    Get All Pets
    public ArrayList<Pet> getAllPets(){
        ArrayList<Pet> pl = null;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();

            String str = "From Pet";
            
            Query query = session.createQuery(str);

            pl = (ArrayList<Pet>)query.list();
            
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
        
        return pl;
    }
    
//    Search Pets
    public ArrayList<Pet> searchPets(String pets){
        ArrayList<Pet> pl =null;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();

            session =sf.openSession();

            Transaction tx = session.beginTransaction();

            String str = "From Pet where breed= :pt";
            
            Query query = session.createQuery(str);
            
            query.setParameter("pt",pets);

            pl = (ArrayList<Pet>)query.list();
            
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
        
        return pl;
    }
}
