/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

import com.sbu.dao.model.User;
import com.sbu.service.impl.UserManagerImpl;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserInsertController {

    @Autowired
    public UserManagerImpl userManagerImpl;
    
    
//    public void setService(UserManagerImpl service){
//        this.service = service;
//    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String insert(Model model) {
        
        
        //User u = new User();
        //u.setId(1002);
       // u.setName("siamak");
       // u.setUsername("ali");
       // userManagerImpl.insertUser(u);
        
        
        
        return "welcome";
    }
}
