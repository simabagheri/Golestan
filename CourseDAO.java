/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao;

import com.sbu.dao.model.Course;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author sima
 */
@Repository
public interface CourseDAO {
     public void insertCourse(Course course);
       public void updateCourse(Course course);
       public void deleteCourse (int id);
       public Course getCourse (int id);
       public List<Course> getAllCourses();
}
