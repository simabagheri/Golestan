/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao;

import com.sbu.dao.model.Student;
import com.sbu.dao.model.Teacher;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author sima
 */
@Repository
public interface TeacherDAO {
    
        public void insertTeacher(Teacher teacher);
       public void updateTeacher(Teacher teacher);
       public void deleteTeacher (int id);
       public Student getTeacher (int id);
       public List<Student> getAllTeachers();
}
