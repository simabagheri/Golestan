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
@RequestMapping("/student")   //student.jsp
public class StudentController {
   
   @RequestMapping(value = "/workbook", method = RequestMethod.GET)//karname termi
   public String workbook() {
      return "workbook";
   }
    @RequestMapping(value = "/register", method = RequestMethod.GET)//sabte nam term
   public String register() {
      return "register";
   }
    @RequestMapping(value = "/profile", method = RequestMethod.GET)//moshahede info
   public String profile() {
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