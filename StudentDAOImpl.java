/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;


import com.sbu.dao.model.Student;
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
public class StudentDAOImpl {

    public StudentDAOImpl() {
    }
    
    @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertStudent(Student student) {
        //entityManager.getTransaction().begin();
        entityManager.persist(student);
        //entityManager.getTransaction().commit();
    }
    public List<Student> getAllStudents() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Student> cq = builder.createQuery(Student.class);
        Root<Student> root = cq.from(Student.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    @Transactional
    public void deleteStudent (int id)
    {
   
        entityManager.remove(entityManager.find(Student.class, id));
      
    }
    public Student getStudent (int id)
    {
        return entityManager.find(Student.class, id);
    }
    @Transactional
    public void updateStudent(Student student)
    {
        Student st = getStudent(student.getStid());
         
        st.setStname(student.getStname());
        st.setStfamily(student.getStfamily());
        st.setStphone(student.getStphone());
        st.setStaddress(student.getStaddress());
        
         
         
    }
}
