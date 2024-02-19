package com.board.demo.DTO;

import com.board.demo.Entity.Writing;

public class BoardDTO {
    private Long no;
    private String title;
    private String content;
    private String writer;

    public BoardDTO(){}

    //글 쓰기에 사용
    public BoardDTO(String title, String content, String writer){
        this.title=title;
        this.content=content;
        this.writer=writer;
    }
    public Writing toEntity(){
        return new Writing(null,title,content,writer,null);
    }


    //글 수정에 사용
    public BoardDTO(String no, String title, String content, String writer){
        this.no=Long.parseLong(no);
        this.title = title;
        this.content=content;
        this.writer=writer;
    }
    public Writing toUpdateEntity(){
        return new Writing(no,title,content,writer,null);
    }
}