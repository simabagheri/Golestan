/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.dao;

import com.sbu.dao.model.Register;
import java.util.List;
import org.springframework.stereotype.Repository;


  @Repository
public interface RegisterDAO {

       public void insertRegister(Register register);
       public void updateRegister(Register register);
       public void deleteRegister (int id);
       public Register getRegister (int id);
       public List<Register> getAllRegisters();
}


