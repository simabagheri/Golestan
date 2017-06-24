
package com.sbu.controller;
import com.sbu.dao.model.User;
import com.sbu.service.impl.UserManagerImpl;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")       //welcome.jsp
public class LoginController { 
    
    
    
     @Autowired
    public UserManagerImpl userManagerImpl;

   
     
     
    @RequestMapping(method = RequestMethod.GET)  //servlet without special url always running in welcome page
   public String loggining(HttpServletRequest request,HttpServletResponse response,Model model) { 
       
      String user= request.getParameter("username");
      String pass= request.getParameter("password");
      model.addAttribute("user",user);
      boolean has_registered=false;
      int index=-1;
      
        
      
      List<User> list_users=userManagerImpl.findAllUsers();
      
      
      for(int i=0;i<list_users.size();i++)
      { if(user.equals(list_users.get(i).getUsername()) && pass.equals(list_users.get(i).getPassword()))
          {   has_registered=true;
              index=i;
              break;}}
      
     
    // request.getSession().setAttribute("loginid",index);
     
      
      if(has_registered)
      {
            if( list_users.get(index).getType().equals("student"))                    
            {
                model.addAttribute("username", list_users.get(index).getUsername());
               
                return "student";
            }          
            else if( list_users.get(index).getType().equals("manager"))
                
            { 
                model.addAttribute("username", list_users.get(index).getUsername());
                
                return "manager";

            }
            else if( list_users.get(index).getType().equals("teacher"))
            {
              
                return "teacher";
            } 
      }     
      return "welcome";
}
    
   }
