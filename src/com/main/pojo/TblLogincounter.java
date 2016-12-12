package com.main.pojo;
// Generated Dec 6, 2016 11:51:12 PM by Hibernate Tools 3.6.0


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TblLogincounter generated by hbm2java
 */
@Entity
@Table(name="tbl_logincounter"
    ,catalog="db_manager"
)
public class TblLogincounter  implements java.io.Serializable {


     private String txtId;
     private String txtDeptId;
     private String txtEmailId;
     private String txtFromIp;
     private Date txtLoginDate;
     private String txtUserType;

    public TblLogincounter() {
    }

	
    public TblLogincounter(String txtId, String txtDeptId, String txtUserType) {
        this.txtId = txtId;
        this.txtDeptId = txtDeptId;
        this.txtUserType = txtUserType;
    }
    public TblLogincounter(String txtId, String txtDeptId, String txtEmailId, String txtFromIp, Date txtLoginDate, String txtUserType) {
       this.txtId = txtId;
       this.txtDeptId = txtDeptId;
       this.txtEmailId = txtEmailId;
       this.txtFromIp = txtFromIp;
       this.txtLoginDate = txtLoginDate;
       this.txtUserType = txtUserType;
    }
   
     @Id 

    
    @Column(name="txtId", unique=true, nullable=false, length=38)
    public String getTxtId() {
        return this.txtId;
    }
    
    public void setTxtId(String txtId) {
        this.txtId = txtId;
    }

    
    @Column(name="txtDeptId", nullable=false, length=38)
    public String getTxtDeptId() {
        return this.txtDeptId;
    }
    
    public void setTxtDeptId(String txtDeptId) {
        this.txtDeptId = txtDeptId;
    }

    
    @Column(name="txtEmailId", length=50)
    public String getTxtEmailId() {
        return this.txtEmailId;
    }
    
    public void setTxtEmailId(String txtEmailId) {
        this.txtEmailId = txtEmailId;
    }

    
    @Column(name="txtFromIp", length=15)
    public String getTxtFromIp() {
        return this.txtFromIp;
    }
    
    public void setTxtFromIp(String txtFromIp) {
        this.txtFromIp = txtFromIp;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="txtLoginDate", length=19)
    public Date getTxtLoginDate() {
        return this.txtLoginDate;
    }
    
    public void setTxtLoginDate(Date txtLoginDate) {
        this.txtLoginDate = txtLoginDate;
    }

    
    @Column(name="txtUserType", nullable=false, length=10)
    public String getTxtUserType() {
        return this.txtUserType;
    }
    
    public void setTxtUserType(String txtUserType) {
        this.txtUserType = txtUserType;
    }




}

