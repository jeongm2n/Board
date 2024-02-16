package com.board.demo.Service;

import com.board.demo.DTO.BoardDTO;
import com.board.demo.Entity.Writing;
import com.board.demo.Repository.WritingRepo;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class WritingService {
    @Autowired
    private WritingRepo writingRepo;

    public List<Writing> index() {
        return writingRepo.findAll();
    }
}
