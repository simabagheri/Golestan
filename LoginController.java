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
@RequestMapping("/login")       //welcome.jsp
public class LoginController { 
   
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url
   public String addStudent(HttpServletRequest request,HttpServletResponse response) {      
      String user= request.getParameter("username");
      String pass= request.getParameter("password");
      
      if(user.equals("student") && pass.equals("student"))
      {
          return "student";
      }
      
      else if(user.equals("teacher") && pass.equals("teacher"))
      {
          return "teacher"; 
      }
      else if(user.equals("manager") && pass.equals("manager"))
      {
          return "manager";
      }
      else
          return "welcome";
   }
}