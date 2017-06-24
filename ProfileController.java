
package com.sbu.controller;

import com.sbu.dao.model.Student;
import com.sbu.service.impl.StudentManagerImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("student/chngprofile")       //profile.jsp
public class ProfileController { 
       
    @Autowired
    public StudentManagerImpl studentManagerImpl;
     
     
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String chng_info(HttpServletRequest request,HttpServletResponse response) { 
       
      //String id=request.getParameter("id");
      //int id2=Integer.parseInt(id);
      String name = request.getParameter("name");
      String fname = request.getParameter("fname");
      String phone = request.getParameter("phone");
      String address = request.getParameter("address");
      Student u=new Student(3,name,fname,phone,address);
         
      studentManagerImpl.updateStudent(u);
      
      return "profile";
      
   }  
  
}
    
  