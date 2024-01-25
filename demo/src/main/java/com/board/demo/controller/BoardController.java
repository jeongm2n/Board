package com.board.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
    
    
    @GetMapping("/first")
    public String first(Model model){
        return "board";
    }
}
