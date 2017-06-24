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
public interface ManagerDAO {
    
     public void insertManager(Teacher teacher);
       public void updateManager(Teacher teacher);
       public void deleteManager (int id);
       public Student getManager (int id);
       public List<Student> getAllManagers();
}
