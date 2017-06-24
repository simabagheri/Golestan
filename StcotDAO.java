/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao;

import com.sbu.dao.model.Stcot;
import com.sbu.dao.model.Student;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author sima
 */@Repository
public interface StcotDAO {
    
      public void insertStcot(Stcot stcot);
       public void updateStcot(Stcot stcot);
       public void deleteStcot (int id);
       public Student getStcot (int id);
       public List<Student> getAllStcots();
}
