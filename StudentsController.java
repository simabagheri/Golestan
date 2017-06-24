/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

/**
 *
 * @author sima
 */


import com.sbu.dao.model.Stcot;
import com.sbu.service.impl.StcotManagerImpl;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("teacher/studentsgrade")
public class StudentsController {
    
     @Autowired
    public StcotManagerImpl stcotManagerImpl;
     
     
     @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String adding(HttpServletRequest request,HttpServletResponse response,Model model) { 
       
       
       String grade0=request.getParameter("grade0");
       String grade1=request.getParameter("grade1");
       String grade2=request.getParameter("grade2");
       String grade3=request.getParameter("grade3");
       String grade4=request.getParameter("grade4");
       List<String> grades=new ArrayList<>();
       grades.add(grade0);
       grades.add(grade1);
       grades.add(grade2);
       grades.add(grade3);
       grades.add(grade4);
       
       for(int i=0;i<5;i++)
       {
            Stcot stcot=new Stcot(4+i,"1","1","1",grades.get(i));
            stcotManagerImpl.insertStcot(stcot);
       }
      
         
       
   return "students";
   }
}
