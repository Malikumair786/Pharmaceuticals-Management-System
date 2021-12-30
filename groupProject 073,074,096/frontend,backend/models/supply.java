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
public class supply {
    public String storeid, suppplyid, dealerid, name, address, phoneno;
    
    supply(String storeid,String supplyid,String dealerid,String name,String address,String phoneno){
        this.suppplyid = supplyid;
        this.storeid = storeid;
        this.dealerid = dealerid;
        this.phoneno = phoneno;
        this.address = address;
        this.name = name;
        
    }

    public supply() {
        
    }
    
}
