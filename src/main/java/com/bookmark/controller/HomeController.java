package com.bookmark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by User on 5/2/2020.
 */

@Controller
public class HomeController {

    @GetMapping("/")
    public String goIndex(){
        return "index";
    }
}
