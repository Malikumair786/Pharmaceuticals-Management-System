/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author tahir
 */
public class medicen {
    public String medid, name, price;
    
    medicen(String medid,String name,String price){
        
        this.medid = medid;
        this.price= price;
        this.name = name;
        
    }

    public medicen() {
        
    }
}
