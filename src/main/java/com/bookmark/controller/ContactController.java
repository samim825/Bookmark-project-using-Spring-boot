package com.bookmark.controller;

import com.bookmark.dao.ContactDao;
import com.bookmark.model.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by User on 5/3/2020.
 */
@Controller
public class ContactController {
    @Autowired
    ContactDao contactDao;

    @GetMapping("/contact")
    public ModelAndView getContactList(HttpSession session){

        Integer uid = (Integer) session.getAttribute("id");
        List<Contact> contactList = contactDao.findDataByUserId(uid);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("contactList",contactList);

        modelAndView.setViewName("contact");
        return  modelAndView;
    }
    @PostMapping("/addContact")
    public  String addContact(HttpSession session,Contact contact){
        Integer userId =(Integer) session.getAttribute("id");
        contact.setUserId(userId);
        try {
            contactDao.save(contact);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/contact";
    }
}

