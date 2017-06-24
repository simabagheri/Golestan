/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

//import com.sbu.controller.model.Student;
import com.sbu.dao.model.Student;
import com.sbu.dao.model.Teacher;
import com.sbu.service.impl.ManagerManagerImpl;
import com.sbu.service.impl.TeacherManagerImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/teacher")   //teacher.jsp
public class TeacherController {

  @Autowired
    public TeacherManagerImpl teacherManagerImpl;
  
  
    @RequestMapping(value = "/students", method = RequestMethod.GET)//modiriat students
   public String students() {
      return "students";
   }
    @RequestMapping(value = "/profile", method = RequestMethod.GET)//taghire info
   public String profile(Model model) {
             
       Teacher t=teacherManagerImpl.getTeacher(1);  //uni k login karde ro mizare
       model.addAttribute("id", t.getTid());
       model.addAttribute("name", t.getTname());
       model.addAttribute("family", t.getTfamily());
       model.addAttribute("phone", t.getTphone());
       model.addAttribute("address",t.getTaddress());
      return "profile";
   }
    @RequestMapping(value = "/password", method = RequestMethod.GET)//taghire pass
   public String password() {
      return "password";
   }
   @RequestMapping(value = "/welcome", method = RequestMethod.GET)//exit az system
   public String welcome() {
      return "welcome";
   }
}