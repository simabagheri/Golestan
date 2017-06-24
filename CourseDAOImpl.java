/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao.impl;

import com.sbu.dao.model.Course;
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
public class CourseDAOImpl {

    public CourseDAOImpl() {
    }
    
     @PersistenceContext
    public EntityManager entityManager;
    
    @Transactional
    public void insertCourse(Course course) {
        //entityManager.getTransaction().begin();
        entityManager.persist(course);
        //entityManager.getTransaction().commit();
    }
    public List<Course> getAllCourses() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Course> cq = builder.createQuery(Course.class);
        Root<Course> root = cq.from(Course.class);
        cq.select(root);
        return entityManager.createQuery(cq).getResultList();
    }
    @Transactional
    public void deleteCourse (int id)
    {
   
        entityManager.remove(entityManager.find(Course.class, id));
      
    }
    public Course getCourse (int id)
    {
        return entityManager.find(Course.class, id);
    }
    @Transactional
    public void updateCourse(Course course)
    {
        Course c = getCourse(course.getId());
         
        c.setCname(course.getCname());
        c.setCkind(course.getCkind());
        c.setCpermited(course.getCpermited());
        c.setCpre(course.getCpre());
        c.setCunit(course.getCunit());
        
         
         
    }
    
}
