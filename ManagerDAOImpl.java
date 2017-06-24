/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;

import com.sbu.dao.model.Manager;
import com.sbu.dao.model.Teacher;
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
public class ManagerDAOImpl {
    
    
     public ManagerDAOImpl() {
    }
    
     @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertManager(Manager manager) {
        //entityManager.getTransaction().begin();
        entityManager.persist(manager);
        //entityManager.getTransaction().commit();
    }
    public List<Manager> getAllManagers() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Manager> cq = builder.createQuery(Manager.class);
        Root<Manager> root = cq.from(Manager.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    @Transactional
    public void deleteManager (int id)
    {
   
        entityManager.remove(entityManager.find(Manager.class, id));
      
    }
    public Manager getManager (int id)
    {
        return entityManager.find(Manager.class, id);
    }
    @Transactional
    public void updateManager(Manager manager)
    {
       /* teacher st = getStudent(student.getStid());
         
        st.setStname(student.getStname());
        st.setStfamily(student.getStfamily());
        st.setStphone(student.getStphone());
        st.setStaddress(student.getStaddress());*/
             
    }
}
