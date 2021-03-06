package com.deere.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageController{

    @RequestMapping("/hello")
    public String hello(@RequestParam(value = "name", required = false, defaultValue = "World") String name, Model model){
        model.addAttribute("name", name);
        model.addAttribute("sampleText", "some text here");
        return "helloworld";
    }



    @RequestMapping("/secure")
    public String secure(@RequestParam(value = "name", required = false, defaultValue = "World") String name, Model model){
        model.addAttribute("name", name);
        model.addAttribute("sampleText", "some text here");
        return "securetest";
    }

}