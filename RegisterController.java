
package com.sbu.controller;

import com.sbu.dao.model.Register;
import com.sbu.service.impl.RegisterManagerImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("student/registering")
public class RegisterController {
    
    
    @Autowired
    public RegisterManagerImpl registerManagerImpl;
     
     
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String register(HttpServletRequest request,HttpServletResponse response) { 
       
       
      /* String coname= request.getParameter("coname");
       int counit= request.getParameter("counit");
       String copre= request.getParameter("copre");
       String profname= request.getParameter("profname");
       String date= request.getParameter("date");
       String exam= request.getParameter("exam");
       
       Register register=new Register(6,coname,3,copre,profname,date,exam);*/
       
        Register register=new Register(3,"ساختمان داده",3,"برنامه سازی پیشرفته","محسن ابراهیمی مقدم","شنبه ها","1396/3/20");
       registerManagerImpl.insertRegister(register);
      
        return "register";
   }
}
 