/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author sima
 */
@Entity
@Table(name = "student")
@XmlRootElement
public class Student implements Serializable{

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "STID" ,nullable = false)
    private Integer stid;
    @Basic(optional = false)
    @Column(name = "STNAME",nullable = true)
    private String stname;
    @Basic(optional = false)
    @Column(name = "STFAMILY",nullable = true)
    private String stfamily;
    @Basic(optional = false)
    @Column(name = "STPHONE",nullable = true)
    private String stphone;
    @Basic(optional = false)
    @Column(name = "STADDRESS",nullable = true)
    private String staddress;
    
     public Student() {
    }

    public Student(Integer stid) {
        this.stid = stid;
    }

    public Student(Integer stid, String stname, String stfamily, String stphone, String staddress) {
        this.stid = stid;
        this.stname = stname;
        this.stfamily = stfamily;
        this.stphone = stphone;
        this.staddress = staddress;
    }

    public Integer getStid() {
        return stid;
    }

    public void setStid(Integer stid) {
        this.stid = stid;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }

    public String getStfamily() {
        return stfamily;
    }

    public void setStfamily(String stfamily) {
        this.stfamily = stfamily;
    }

    public String getStphone() {
        return stphone;
    }

    public void setStphone(String stphone) {
        this.stphone = stphone;
    }

    public String getStaddress() {
        return staddress;
    }

    public void setStaddress(String staddress) {
        this.staddress = staddress;
    }
    
     @Override
    public int hashCode() {
        int hash = 0;
        hash += (stid != null ? stid.hashCode() : 0);
        return hash;
    }
    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof User)) {
            return false;
        }
        Student other = (Student) object;
        if ((this.stid == null && other.stid != null) || (this.stid != null && !this.stid.equals(other.stid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "test.User[ id=" + stid + " ]";
    }
    
}
