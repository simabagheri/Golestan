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
@Table(name = "teacher")
@XmlRootElement


public class Manager implements Serializable{

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID" ,nullable = false)
    private Integer mid;
    @Basic(optional = false)
    @Column(name = "MNAME",nullable = true)
    private String mname;
    @Basic(optional = false)
    @Column(name = "MFAMILY",nullable = true)
    private String mfamily;
    @Basic(optional = false)
    @Column(name = "MPHONE",nullable = true)
    private String mphone;
    @Basic(optional = false)
    @Column(name = "MADDRESS",nullable = true)
    private String maddress;

    public Manager() {
    }

    public Manager(Integer mid, String mname, String mfamily, String mphone, String maddress) {
        this.mid = mid;
        this.mname = mname;
        this.mfamily = mfamily;
        this.mphone = mphone;
        this.maddress = maddress;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMfamily() {
        return mfamily;
    }

    public void setMfamily(String mfamily) {
        this.mfamily = mfamily;
    }

    public String getMphone() {
        return mphone;
    }

    public void setMphone(String mphone) {
        this.mphone = mphone;
    }

    public String getMaddress() {
        return maddress;
    }

    public void setMaddress(String maddress) {
        this.maddress = maddress;
    }
 
      @Override
    public int hashCode() {
        int hash = 0;
        hash += (mid != null ? mid.hashCode() : 0);
        return hash;
    }
    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Manager)) {
            return false;
        }
        Manager other = (Manager) object;
        if ((this.mid == null && other.mid != null) || (this.mid != null && !this.mid.equals(other.mid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "test.User[ id=" + mid + " ]";
    }
}

