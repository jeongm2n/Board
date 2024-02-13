package com.board.demo.controller;

import com.board.demo.DTO.BoardDTO;
import com.board.demo.Entity.Writing;
import com.board.demo.Repository.WritingRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BoardController {
    @Autowired
        private WritingRepo writingRepo;
    
    @GetMapping("/")
    public ModelAndView every(Model model){
        ModelAndView mav = new ModelAndView();

        //1. 모든 데이터 가져오기
        List<Writing> writingEntityList = writingRepo.findAll();

        //2. 모델에 데이터 등록하기
        model.addAttribute("writingList",writingEntityList);

        mav.setViewName("main");
        //3. 뷰 페이지 설정하기
        return mav;
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
