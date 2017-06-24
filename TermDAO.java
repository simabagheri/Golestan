/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao;

import com.sbu.dao.model.Register;
import com.sbu.dao.model.Term;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author sima
 */
@Repository
public interface TermDAO {
       public void insertTerm(Term term);
       public void updateTerm(Term term);
       public Register getTerm (int id);
       public List<Register> getAllTerms();
}
