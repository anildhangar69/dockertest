package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelComeController {

    @GetMapping("/hello")
    public String welcome(Model m){
        m.addAttribute("name","Anil");
        return "index";

    }
}
