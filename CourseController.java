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


@Controller
@RequestMapping("manager/courseadd") 
public class CourseController {
    
    
     @Autowired
    public CourseManagerImpl courseManagerImpl;
    
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String courseadd(HttpServletRequest request,HttpServletResponse response,Model model) { 
    
      String cname= request.getParameter("cname");
      String ckind= request.getParameter("ckind");
      String cpre= request.getParameter("cpre");
      String cpermited= request.getParameter("cpermited");
     // int cunit=  Integer.parseInt(request.getParameter("cunit"));*/
      
      Course course=new Course(6,"الگوریتم","اصلی","ساختمان داده ها","همه",3);
     // Course course = new Course (4,cname,ckind,cpre,cpermited,4);
      courseManagerImpl.insertCourse(course);
    
       return "course_add";
   }
   
}
