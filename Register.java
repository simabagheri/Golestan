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


@Entity
@Table(name = "register")
@XmlRootElement
public class Register implements Serializable{
  
     private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "STUDENTID")
    private Integer studentid;
    @Basic(optional = false)
    @Column(name = "CONAME")
    private String coname;
    @Basic(optional = false)
    @Column(name = "COUNIT")
    private int counit;
    @Basic(optional = false)
    @Column(name = "COPRE")
    private String copre;
    @Basic(optional = false)
    @Column(name = "PROFNAME")
    private String profname;
    @Basic(optional = false)
    @Column(name = "DATE")
    private String date;
    @Basic(optional = false)
    @Column(name = "EXAM")
    private String exam;

        public Register() {
        }

        public Register(Integer studentid, String coname, int counit, String copre, String profname, String date, String exam) {
            this.studentid = studentid;
            this.coname = coname;
            this.counit = counit;
            this.copre = copre;
            this.profname = profname;
            this.date = date;
            this.exam = exam;
        }
        

        public Integer getStudentid() {
            return studentid;
        }

        public void setStudentid(Integer studentid) {
            this.studentid = studentid;
        }

        public String getConame() {
            return coname;
        }

        public void setConame(String coname) {
            this.coname = coname;
        }

        public int getCounit() {
            return counit;
        }

        public void setCounit(int counit) {
            this.counit = counit;
        }

        public String getCopre() {
            return copre;
        }

        public void setCopre(String copre) {
            this.copre = copre;
        }

        public String getCoprofname() {
            return profname;
        }

        public void setProfname(String profname) {
            this.profname = profname;
        }

        public String getDate() {
            return date;
        }

        public void setDate(String date) {
            this.date = date;
        }

        public String getExam() {
            return exam;
        }

        public void setExam(String exam) {
            this.exam = exam;
        }
        
         @Override
    public int hashCode() {
        int hash = 0;
        hash += (studentid != null ? studentid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Register)) {
            return false;
        }
        Register other = (Register) object;
        if ((this.studentid == null && other.studentid != null) || (this.studentid != null && !this.studentid.equals(other.studentid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "test.User[ id=" + studentid + " ]";
    }

    
    
}
