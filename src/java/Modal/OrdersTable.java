/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import java.util.Objects;
import javax.persistence.*;

/**
 *
 * @author user
 */
@Entity
public class OrdersTable {
    
    @Id
    @GeneratedValue
    int id;
    
    private String uname;
    
    private String name;
    
    private String uaddress;
    
    private String pincode;
    
    private String ucontact;
    
    private String uemail;
    
    private String breed;
    
    private int age;
    
    private String price;
    
    private String gender;
    
    private String permission;
    
    public OrdersTable(){}

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
    
    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getUcontact() {
        return ucontact;
    }

    public void setUcontact(String ucontact) {
        this.ucontact = ucontact;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 47 * hash + this.id;
        hash = 47 * hash + Objects.hashCode(this.uname);
        hash = 47 * hash + Objects.hashCode(this.uaddress);
        hash = 47 * hash + Objects.hashCode(this.pincode);
        hash = 47 * hash + Objects.hashCode(this.ucontact);
        hash = 47 * hash + Objects.hashCode(this.breed);
        hash = 47 * hash + Objects.hashCode(this.price);
        hash = 47 * hash + Objects.hashCode(this.permission);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final OrdersTable other = (OrdersTable) obj;
        if (this.price != other.price) {
            return false;
        }
        if (!Objects.equals(this.uname, other.uname)) {
            return false;
        }
        if (!Objects.equals(this.breed, other.breed)) {
            return false;
        }
        return true;
    }
    
    
    
}
