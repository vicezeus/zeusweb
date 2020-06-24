package com.zeusweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {

    @RequestMapping("/")
    public String jsp(Model model) throws Exception {
        model.addAttribute("projectVer", "v1.2");
        return "main";
    }
}