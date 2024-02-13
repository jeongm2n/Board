package com.board.demo.Repository;

import com.board.demo.Entity.Writing;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

public interface WritingRepo extends CrudRepository<Writing, Long> {
    @Override
    ArrayList<Writing> findAll();
}
