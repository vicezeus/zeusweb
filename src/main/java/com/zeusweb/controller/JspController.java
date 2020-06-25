package com.zeusweb.controller;

import com.zeusweb.model.User;
import com.zeusweb.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class JspController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/")
    public String jsp(Model model) throws Exception {
        model.addAttribute("projectVer", "v1.2");
        return "main";
    }

    @GetMapping(path="/user")
    public @ResponseBody Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }
}