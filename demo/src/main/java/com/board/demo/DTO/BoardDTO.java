package com.board.demo.DTO;

import com.board.demo.Entity.Writing;

public class BoardDTO {
    private String title;
    private String content;
    private String writer;

    public BoardDTO(String title, String content, String writer){
        this.title=title;
        this.content=content;
        this.writer=writer;
    }

    public Writing toEntity(){
        return new Writing(null,title,content,writer,null);
    }
}