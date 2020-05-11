package com.bookmark.controller;

import com.bookmark.dao.BookmarkDao;
import com.bookmark.model.Bookmark;

import com.bookmark.model.User;
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
public class BookmarkController {

    @Autowired
    BookmarkDao bookmarkDao;

    @GetMapping("/bookmark")
    public ModelAndView goBookmark(HttpSession session){
        User user = new User();

        Integer uid = (Integer) session.getAttribute("id");
        System.out.println("User Id is : "+uid);
        List<Bookmark> bookmarkList = bookmarkDao.findDataByUserId(uid);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("bookmarkList",bookmarkList);
        modelAndView.setViewName("bookmark");
        return modelAndView;
    }

    @PostMapping("/addBookmark")
    public ModelAndView addBookmark(Bookmark bookmark,HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        Integer uid =(Integer) session.getAttribute("id");
        try {
            bookmark.setUserId(uid);
            bookmarkDao.save(bookmark);
            String msg = "Data successfully inserted";
            modelAndView.addObject("msg", msg);
        }catch (Exception e) {

            String msg = "Sorry! something went wrong!!!";
            modelAndView.addObject("msg", msg);
            e.printStackTrace();
        }
        modelAndView.setViewName("redirect:/bookmark");
        return modelAndView;
    }
}
