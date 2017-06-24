/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

//import com.sbu.controller.model.Student;
import com.sbu.dao.model.Student;
import com.sbu.service.impl.StudentManagerImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/student")   //student.jsp

public class StudentController {
    
    
    @Autowired
    public StudentManagerImpl studentManagerImpl;
    // Student st=studentManagerImpl.getStudent(2); 
    
    
   
   @RequestMapping(value = "/workbook", method = RequestMethod.GET)//karname termi
   public String workbook() {
      return "workbook";
   }
    @RequestMapping(value = "/register", method = RequestMethod.GET)//sabte nam term
   public String register() {
      return "register";
   }
    @RequestMapping(value = "/profile", method = RequestMethod.GET)//moshahede info
   public String profile(Model model) {
             
       
       Student st=studentManagerImpl.getStudent(2);  //uni k login karde ro mizare
       model.addAttribute("id", st.getStid());
       model.addAttribute("name", st.getStname());
       model.addAttribute("family", st.getStfamily());
       model.addAttribute("phone", st.getStphone());
       model.addAttribute("address",st.getStaddress());
       //Student u=new Student(2,"سمیه",st.getStfamily(),st.getStphone(),st.getStaddress());
      // studentManagerImpl.updateStudent(u);     
      return "profile";
   }
 
     
    @RequestMapping(value = "/password", method = RequestMethod.GET)//taghire pass
   public String password() {
      return "password";
   }
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)//exit az system
   public String exit() {
      return "welcome";
   }
}