package com.board.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
    
    
    @GetMapping("/main")
    public String every(Model model){
        return "main";
    }

    @GetMapping("/writepage")
    public String write(Model model){
        return "writepage";
    }

    @GetMapping("/delpage")
    public String delete(Model model){
        return "delpage";
    }
}
