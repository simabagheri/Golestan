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
@Table(name = "course")
@XmlRootElement
public class Course implements Serializable{
    
     private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "CNAME")
    private String cname;
    @Basic(optional = false)
    @Column(name = "CKIND")
    private String ckind;
    @Basic(optional = false)
    @Column(name = "CPRE")
    private String cpre;
    @Basic(optional = false)
    @Column(name = "CPERMITED")
    private String cpermited;
    @Basic(optional = false)
    @Column(name = "CUNIT")
    private Integer cunit;

    public Course() {
    }

    public Course(Integer id, String cname, String ckind, String cpre, String cpermited, Integer cunit) {
        this.id = id;
        this.cname = cname;
        this.ckind = ckind;
        this.cpre = cpre;
        this.cpermited = cpermited;
        this.cunit = cunit;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCkind() {
        return ckind;
    }

    public void setCkind(String ckind) {
        this.ckind = ckind;
    }

    public String getCpre() {
        return cpre;
    }

    public void setCpre(String cpre) {
        this.cpre = cpre;
    }

    public String getCpermited() {
        return cpermited;
    }

    public void setCpermited(String cpermited) {
        this.cpermited = cpermited;
    }

    public Integer getCunit() {
        return cunit;
    }

    public void setCunit(Integer cunit) {
        this.cunit = cunit;
    }

     @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Course)) {
            return false;
        }
        Course other = (Course) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "test.User[ id=" + id + " ]";
    }

  

    
    
    
}
