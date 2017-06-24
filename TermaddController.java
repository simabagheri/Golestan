/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

import com.sbu.dao.model.Course;
import com.sbu.service.impl.CourseManagerImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sima
 */
@Controller
@RequestMapping("manager/term_adding")
public class TermaddController {
    
      @Autowired
    public CourseManagerImpl courseManagerImpl;
    
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String termadd(HttpServletRequest request,HttpServletResponse response,Model model) { 
    
    
    
       return "term_add";
   }
   
   
   
   
    
}
