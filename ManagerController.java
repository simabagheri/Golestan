/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
*/
package com.sbu.controller;

//import com.sbu.controller.model.Student;
import com.sbu.dao.model.Course;
import com.sbu.dao.model.Manager;
import com.sbu.dao.model.Student;
import com.sbu.dao.model.Teacher;
import com.sbu.service.impl.CourseManagerImpl;
import com.sbu.service.impl.TeacherManagerImpl;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/manager")     //manager.jsp
public class ManagerController {
    
    @Autowired
    public CourseManagerImpl courseManagerImpl;
    @Autowired
    public TeacherManagerImpl teacherManagerImpl;
    
   
  // @RequestMapping(value = "/term_add", method = RequestMethod.GET)//modiriat doros
  //public String term_add() {
  //   return "term_add";
  // }
   @RequestMapping(value = "/course_add", method = RequestMethod.GET)//modiriat doros
   public String course_add() {
       
       
       Course c=new Course(20,"ساختمان داده","تخصصی","برنامه سازی پیشرفته","سخت افزار",3);
       courseManagerImpl.insertCourse(c);
      return "course_add";
   }
   
  //  @RequestMapping(value = "/term_courseadd", method = RequestMethod.GET)//modiriat doros
  // public String term_courseadd() {
  //   return "term_courseadd";
  // }
   @RequestMapping(value = "/courses", method = RequestMethod.GET)//modiriat doros
   public String courses() {
      return "courses";
   }
    @RequestMapping(value = "/term", method = RequestMethod.GET)//modiriat term
   public String term() {
      return "term";
   }
    @RequestMapping(value = "/students", method = RequestMethod.GET)//modiriat students
   public String students() {
      return "students";
   }
    @RequestMapping(value = "/profile", method = RequestMethod.GET)//taghire info
   public String profile(Model model) {
       
         Teacher t=teacherManagerImpl.getTeacher(2);  //uni k login karde ro mizare
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