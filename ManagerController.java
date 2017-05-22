/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

import com.sbu.controller.model.Student;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/manager")     //manager.jsp
public class ManagerController {
   
   @RequestMapping(value = "/term_add", method = RequestMethod.GET)//modiriat doros
   public String term_add() {
      return "term_add";
   }
   @RequestMapping(value = "/course_add", method = RequestMethod.GET)//modiriat doros
   public String course_add() {
      return "course_add";
   }
    @RequestMapping(value = "/term_courseadd", method = RequestMethod.GET)//modiriat doros
   public String term_courseadd() {
      return "term_courseadd";
   }
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
   public String profile() {
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