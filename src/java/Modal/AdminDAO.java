/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author user
 */
public class AdminDAO {
    
    public boolean check(Admin original){
        boolean flag = false;
        Admin db=null;
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        Transaction tx = null;
        
        try{
            cf = new Configuration();

            cf.configure("cfgpackage/hibernate.cfg.xml");

            sf = cf.buildSessionFactory();
            session =sf.openSession();
            tx = session.beginTransaction();
            db = (Admin)session.get(Admin.class,original.getName());
            
            tx.commit();
            if(db!=null)
            {
                return original.equals(db);
            }
            else
            {
                return false;
            }
            
        }
        catch(Exception e){
            System.out.println(e);
            flag=false;
            e.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        return flag;
    }
    
}
