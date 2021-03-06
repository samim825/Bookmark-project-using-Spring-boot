package com.bookmark.controller;

import com.bookmark.dao.UserDao;
import com.bookmark.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;

/**
 * Created by User on 5/2/2020.
 */

@Controller
public class HomeController {

    @Autowired
    UserDao userDao;

    @GetMapping({"/","/index","/home"})
    public String goIndex(){
        return "home";
    }
    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }
    @GetMapping("/logout-success")
    public String logoutPage(){
        return "login";
    }

    @GetMapping("/signUp")
    public String goSignupPage(){
        return "signUp";
    }
    @GetMapping("/profile")
    public ModelAndView goProfile(){
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("profile");
        return modelAndView;
    }


    @PostMapping("/signUp")
    public ModelAndView addUser(User user){
        System.out.println("addUser method visited");
        System.out.println(user.getEmail());
        System.out.println(user.getId());
        System.out.println(user.getName());
        System.out.println(user.getImage());



        ModelAndView modelAndView = new ModelAndView();
        try{
            user = userDao.save(user);
            modelAndView.setViewName("login");
        } catch (Exception e){

            String msg = "Something went wrong!!!please try again";
            modelAndView.addObject("msg",msg);
            modelAndView.setViewName("signUp");

            e.printStackTrace();
        }


        return modelAndView;
    }
}
