/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;

import com.sbu.dao.model.Stcot;
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
public class StcotDAOImpl {

    public StcotDAOImpl() {
    }
    
     @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertStcot(Stcot stcot) {
        //entityManager.getTransaction().begin();
        entityManager.persist(stcot);
        //entityManager.getTransaction().commit();
    }
    public List<Stcot> getAllStcots() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Stcot> cq = builder.createQuery(Stcot.class);
        Root<Stcot> root = cq.from(Stcot.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    @Transactional
    public void deleteStcot (int id)
    {
   
        entityManager.remove(entityManager.find(Stcot.class, id));
      
    }
    public Stcot getStcot (int id)
    {
        return entityManager.find(Stcot.class, id);
    }
    @Transactional
    public void updateStcot(Stcot stcot)
    {
       /* Stcot st = getStudent(student.getStid());
         
        st.setStname(student.getStname());
        st.setStfamily(student.getStfamily());
        st.setStphone(student.getStphone());
        st.setStaddress(student.getStaddress());*/
        
         
         
    }
   
}
