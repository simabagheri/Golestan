/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;

import com.sbu.dao.model.Course;
import com.sbu.dao.model.Register;
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
public class RegisterDAOImpl {

    public RegisterDAOImpl() {
    }
   
    
     @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertRegister(Register register) {
        //entityManager.getTransaction().begin();
        entityManager.persist(register);
        //entityManager.getTransaction().commit();
    }
    @Transactional
    public List<Register> getAllRegister() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Register> cq = builder.createQuery(Register.class);
        Root<Register> root = cq.from(Register.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    @Transactional
    public void deleteRegister (int id)
    {
   
        entityManager.remove(entityManager.find(Register.class, id));
      
    }
    @Transactional
    public Register getRegister (int id)
    {
        return entityManager.find(Register.class, id);
    }
    @Transactional
    public void updateCourse(Register register)
    {
            //todo badann update mishavad     
    }
    
}

