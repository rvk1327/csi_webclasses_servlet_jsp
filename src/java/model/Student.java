package model;

import javax.persistence.*;

@Entity
public class Student {
    
    @Id
    @Column(name="uname", length = 30)
    private String username;
    
    @Column(name="password",length = 50)
    private String password;
    
    @Column(name="gender",length = 20)
    private String gender;
    
    @Column(name="tech", length = 255)
    private String tech;
    
    @Column(name="ctry", length = 30)
    private String ctry;
    
    @Column(name="emailid", length = 100)
    private String emailid;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTech() {
        return tech;
    }

    public void setTech(String tech) {
        this.tech = tech;
    }

    public String getCtry() {
        return ctry;
    }

    public void setCtry(String ctry) {
        this.ctry = ctry;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }
    
    
}
