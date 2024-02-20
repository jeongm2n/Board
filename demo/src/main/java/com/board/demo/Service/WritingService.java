package com.board.demo.Service;

import com.board.demo.DTO.BoardDTO;
import com.board.demo.Entity.Writing;
import com.board.demo.Repository.WritingRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WritingService {
    @Autowired
    private WritingRepo writingRepo;

    public List<Writing> index() {
        return writingRepo.findAll();
    }

    public Writing detail(long no){
        return writingRepo.findById(no).orElse(null);
    }

    public void delete(long no){
        writingRepo.deleteById(no);
    }
}
