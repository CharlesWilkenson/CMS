package com.management.system.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/api/content/management/service/views")
public class Index {

    @GetMapping("/registerForm")
    public String login() {
        return "register";  
    }
    
    @GetMapping("/editProfile")
    public String editProfile(Model model) {
        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        model.addAttribute("email", email);
        return "editProfile";  
    }
    
    @GetMapping("/addContent")
    public String addContent() {
        return "addContent";  
    }
    
    @GetMapping("/viewContent")
    public String viewContent() {
        return "viewContent";  
    }


}
