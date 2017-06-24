/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;


import com.sbu.dao.model.User;
import com.sbu.service.impl.UserManagerImpl;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("student/chngpassword") 
public class PasswordController {
    @Autowired
    public UserManagerImpl userManagerImpl;
    
     @RequestMapping(method = RequestMethod.GET)//karname termi
   public String chng_pass(HttpServletRequest request,HttpServletResponse response) {
       
      
      String pass= request.getParameter("password");
      String pass1= request.getParameter("password1");
      String pass2= request.getParameter("password2");
      List<User> lists=userManagerImpl.findAllUsers();
      boolean flag=false;
      int index=-1;
      
     /* if(pass1.equals(pass2))
      {
          flag=true;
          for(int i=0;i<lists.size();i++)
            {
                lists.get(i).getPassword().equals(pass);
                index=i;
                break;
            }
      }
      */

         // User u= userManagerImpl.getUser(index);
         // u.setPassword(pass2);
          User user=new User(1,"sima",pass1,"student");
          userManagerImpl.updateUser(user);
         
      
       
       
      return "password";
   }
    
}
