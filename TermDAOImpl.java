/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;

import com.sbu.dao.model.Register;
import com.sbu.dao.model.Term;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author sima
 */
@Repository
public class TermDAOImpl {
    
    
     public TermDAOImpl() {
    }
   
    
     @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertTerm(Term term) {
        //entityManager.getTransaction().begin();
        entityManager.persist(term);
        //entityManager.getTransaction().commit();
    }
    @Transactional
    public List<Term> getAllTerms() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Term> cq = builder.createQuery(Term.class);
        Root<Term> root = cq.from(Term.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    
  
    @Transactional
    public Term getTerm (int id)
    {
        return entityManager.find(Term.class, id);
    }
    @Transactional
    public void updateTerm(Term term)
    {
            //todo badann update mishavad     
    }
}
