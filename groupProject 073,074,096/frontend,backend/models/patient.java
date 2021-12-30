package models;

public class patient {
    public String patid, name, address, phoneno;
    
    patient(String patid,String name,String address,String phoneno){
        this.patid = patid;
        this.phoneno = phoneno;
        this.address = address;
        this.name = name;
        
    }

    public patient() {
        
    }
}
