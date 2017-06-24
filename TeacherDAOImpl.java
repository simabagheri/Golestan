/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;
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
public class TeacherDAOImpl {

    public TeacherDAOImpl() {
    }
    
     @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertTeacher(Teacher teacher) {
        //entityManager.getTransaction().begin();
        entityManager.persist(teacher);
        //entityManager.getTransaction().commit();
    }
    public List<Teacher> getAllTeachers() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Teacher> cq = builder.createQuery(Teacher.class);
        Root<Teacher> root = cq.from(Teacher.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    @Transactional
    public void deleteTeacher (int id)
    {
   
        entityManager.remove(entityManager.find(Teacher.class, id));
      
    }
    public Teacher getTeacher (int id)
    {
        return entityManager.find(Teacher.class, id);
    }
    @Transactional
    public void updateTeacher(Teacher teacher)
    {
       /* teacher st = getStudent(student.getStid());
         
        st.setStname(student.getStname());
        st.setStfamily(student.getStfamily());
        st.setStphone(student.getStphone());
        st.setStaddress(student.getStaddress());*/
        
         
         
    }
}
