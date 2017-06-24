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
 */    @Entity
@Table(name = "teacher")
@XmlRootElement
public class Teacher implements Serializable{

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "TID" ,nullable = false)
    private Integer tid;
    @Basic(optional = false)
    @Column(name = "TNAME",nullable = true)
    private String tname;
    @Basic(optional = false)
    @Column(name = "TFAMILY",nullable = true)
    private String tfamily;
    @Basic(optional = false)
    @Column(name = "TPHONE",nullable = true)
    private String tphone;
    @Basic(optional = false)
    @Column(name = "TADDRESS",nullable = true)
    private String taddress;

    public Teacher() {
    }

    public Teacher(Integer tid, String tname, String tfamily, String tphone, String taddress) {
        this.tid = tid;
        this.tname = tname;
        this.tfamily = tfamily;
        this.tphone = tphone;
        this.taddress = taddress;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTfamily() {
        return tfamily;
    }

    public void setTfamily(String tfamily) {
        this.tfamily = tfamily;
    }

    public String getTphone() {
        return tphone;
    }

    public void setTphone(String tphone) {
        this.tphone = tphone;
    }

    public String getTaddress() {
        return taddress;
    }

    public void setTaddress(String taddress) {
        this.taddress = taddress;
    }
    
     @Override
    public int hashCode() {
        int hash = 0;
        hash += (tid != null ? tid.hashCode() : 0);
        return hash;
    }
    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Teacher)) {
            return false;
        }
        Teacher other = (Teacher) object;
        if ((this.tid == null && other.tid != null) || (this.tid != null && !this.tid.equals(other.tid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "test.User[ id=" + tid + " ]";
    }
}

