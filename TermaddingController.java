/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbu.controller;

import com.sbu.dao.model.Term;
import com.sbu.service.impl.TermManagerImpl;
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
 */@Controller
@RequestMapping("manager/adding")
public class TermaddingController {
    
      @Autowired
    public TermManagerImpl termManagerImpl;
    
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String adding(HttpServletRequest request,HttpServletResponse response,Model model) { 
    
    String year=request.getParameter("year");
    String minyear=request.getParameter("minyear");
    
       
    Term term=new Term(5,year,minyear);
    termManagerImpl.insertTerm(term);
    
       return "term_add";
   }
}
